

#include <helper_cuda.h>
#include <GL/glew.h>



GLfloat* D_cordinatePos;
GLfloat* D_colors;
unsigned int* D_indices;
unsigned int* D_indicesNew;
cudaStream_t iterateStream, indexStream;

//Calculates the indices for a the next iteration of the fratal
extern "C" __global__ void indicesKernel(unsigned int* indices, unsigned int* indicesNew, unsigned int size){
  int i = blockDim.x * blockIdx.x+threadIdx.x;
  if(i < size * 2 -1){
    if((i%2) == 0){
      indicesNew[i] = indices[i/2];
    }
    else{
      indicesNew[i] = size + i/2;
    }
  }
}
//Copies the newest indices to the area of devices memory that is used by OpenGL, much faster than MemCpy
extern "C" __global__ void indicesCopyKernel(unsigned int* deviceIndicesPtr,unsigned int* indices, unsigned int* indicesNew, unsigned int size){
  int i = blockDim.x * blockIdx.x+threadIdx.x;

  if(i < size){
    deviceIndicesPtr[i] = indicesNew[i];
  }
}


//almost the same as serial code, includes some control flow optimizations
extern "C" __global__ void iterateKernel(GLfloat* deviceVertPtr,GLfloat* deviceColorPtr,unsigned int* indices,const unsigned int size){
  int i = blockDim.x * blockIdx.x+threadIdx.x;

  if(i < size-1){
  GLfloat startX = deviceVertPtr[indices[i]*2];
  GLfloat startY = deviceVertPtr[(indices[i]*2)+1];

  GLfloat nextX = deviceVertPtr[indices[i+1] * 2];
  GLfloat nextY = deviceVertPtr[indices[i+1] * 2 + 1];

  GLfloat newStartX;
  GLfloat newStartY;


    if(startY == nextY){
      if( (nextX > startX && (i%2) == 0) || (nextX <= startX && (i%2) == 1)){
        //cp 1
        newStartX = (startX + nextX)/2;
        newStartY = startY + abs(nextX - startX)/2;
      }
      else{
        //cp 2
        newStartX = (startX + nextX)/2;
        newStartY = startY - abs(nextX - startX)/2;
      }
    }
    else if(startX == nextX){
      if((nextY > startY && (i%2) == 0) || (nextY <= startY && (i%2) == 1)){
        //cp 3
        newStartX = startX - abs(nextY - startY)/2;
        newStartY = (nextY + startY)/2;
      }
      else{
        //cp 4
        newStartX = startX + abs(nextY - startY)/2;
        newStartY = (nextY + startY)/2;
      }
    }
    else{
      if(( ( (nextX > startX && nextY > startY) || (nextX < startX && nextY < startY)) && (i%2) == 0)
        || (!((nextX > startX && nextY > startY) || (nextX < startX && nextY < startY)) && (i%2) == 1)){
        //cp 5
        newStartX = startX;
        newStartY = nextY;
      }
      else{
        //cp 6
        newStartX = nextX;
        newStartY = startY;
      }
    }
    	deviceVertPtr[(size+i)*2] = newStartX;
    	deviceVertPtr[(size+i)*2 +1] = newStartY;

    	float inc = 2.0/size ;

    	deviceColorPtr[(size+i)*3] = 2.0-(inc*i);
    	deviceColorPtr[(size+i)*3+1] = inc*i;
    	deviceColorPtr[(size+i)*3+2] = 0;

    }



  }


//kernel launcher function does not cudaMemcpy at all.
//this function is called repeatedly.
//color and cordinate data is automaticly stored in device memory locations used by OpenGL.
// VBO index array must be copeied to an OpeGL location seperatly because the operation cannot be done in place easily.
extern "C" int kernelLauncher(GLfloat* deviceVertPtr,GLfloat* deviceColorPtr,unsigned int* deviceIndicesPtr,unsigned int size) {
  unsigned int* temp;
  temp = D_indices;
  D_indices = D_indicesNew;
  D_indicesNew = temp;

  int blockSize = 1024;
  int gridSize = ((size-1)/1024)+1;
  iterateKernel<<<gridSize, blockSize,0,iterateStream>>>(deviceVertPtr,deviceColorPtr,D_indices,size);
  gridSize = ((size*2-1)/1024)+1;
  indicesKernel<<<gridSize, blockSize,0,indexStream>>>(D_indices,D_indicesNew,size);

  cudaDeviceSynchronize();

  return 0;
}

// kernel init functon mallocs and initializes indicies memory location.
// not needed for color and position data because OpenGL buffers and cuda register buffers does this for us.
void kernelInit(unsigned int* H_indices,unsigned int size, unsigned int totalSize) {
  cudaStreamCreate(&iterateStream);
  cudaStreamCreate(&indexStream);

  cudaMalloc(&D_indices,      totalSize*sizeof(unsigned int));
  cudaMalloc(&D_indicesNew,   totalSize*sizeof(unsigned int));

  cudaMemcpy(D_indicesNew,     H_indices,      size * sizeof(unsigned int), cudaMemcpyHostToDevice);
}
//called only once
//copies over the indices array and frees memory. 
void kernelClose(unsigned int* deviceIndicesPtr,unsigned int* H_indices,unsigned int size){

  int blockSize = 1024;
  int gridSize = ((size*2-1)/1024)+1;
  indicesCopyKernel<<<gridSize, blockSize,0,indexStream>>>(deviceIndicesPtr,D_indices,D_indicesNew,size);
  cudaDeviceSynchronize();

  cudaFree(D_indices);
  cudaFree(D_indicesNew);


}
