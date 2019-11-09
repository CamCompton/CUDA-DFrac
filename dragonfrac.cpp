// Include standard headers
//extern "C" #include <wb.h>

#include <iostream>
#include <ctime>
#include <stdio.h>
#include <stdlib.h>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <GLFW/glfw3.h>
GLFWwindow* window;

// Include GLM
#include <glm/glm.hpp>
using namespace glm;

#include "common/shader.hpp"
#include <vector>
#include <cmath>

// CUDA includes
#include <cuda_runtime.h>
#include <cuda_gl_interop.h>

// CUDA utilities and system includes
#include <helper_cuda.h>
#include <helper_cuda_gl.h>

//#include <wb.h>



const GLfloat X_START = -0.50f, X_END = 0.74f;
const GLfloat Y_START = -0.3f, Y_END = -0.3f;

const GLfloat LINE_WIDTH = 0.01f;
const unsigned int NUM_ITERATIONS = 25;

extern "C" void kernelLauncher(GLfloat* cudaVertPtr,GLfloat* deviceColorPtr,unsigned int* deviceIndicesPtr,unsigned int size);
void kernelInit(unsigned int* H_indices,unsigned int size,unsigned int totalSize);
void kernelClose(unsigned int* deviceIndicesPtr,unsigned int* H_indices,unsigned int size);


//serial iterate function, advances the fractal to the next iteration
void iterateDragon(unsigned int* indices,unsigned int size, GLfloat cordinatePos[], GLfloat colors[]){
	for(int i = 0; i < size-1;i++){

	GLfloat startX = cordinatePos[indices[i]*2];
	GLfloat startY = cordinatePos[(indices[i]*2)+1];

	GLfloat nextX = cordinatePos[indices[i+1] * 2];
	GLfloat nextY = cordinatePos[indices[i+1] * 2 + 1];


	GLfloat newStartX;
	GLfloat newStartY;
//control flow finds direction of a line segment and transforms in the proper direction
	if((i%2) == 0){
		if(startY == nextY){
			if(nextX > startX){
				newStartX = (startX + nextX)/2;
				newStartY = startY + abs(nextX - startX)/2;
			}
			else{
				newStartX = (startX + nextX)/2;
				newStartY = startY - abs(nextX - startX)/2;
			}
		}
		else if(startX == nextX){
			if(nextY > startY){
				newStartX = startX - abs(nextY - startY)/2;
				newStartY = (nextY + startY)/2;
			}
			else{
				newStartX = startX + abs(nextY - startY)/2;
				newStartY = (nextY + startY)/2;
			}
		}
		else{
			if((nextX > startX && nextY > startY) || (nextX < startX && nextY < startY)){
				newStartX = startX;
				newStartY = nextY;
			}
			else{
				newStartX = nextX;
				newStartY = startY;
			}
		}
	}
	else{
		if(startY == nextY){
			if(nextX > startX){
				newStartX = (startX + nextX)/2;
				newStartY = startY - abs(nextX - startX)/2;
			}
			else{
				newStartX = (startX + nextX)/2;
				newStartY = startY + abs(nextX - startX)/2;
			}
		}
		else if (startX == nextX){
			if(nextY > startY){
				newStartX = startX + abs(nextY - startY)/2;
				newStartY = (nextY + startY)/2;
			}
			else{
				newStartX = startX - abs(nextY - startY)/2;
				newStartY = (nextY + startY)/2;
			}
		}
		else{
			if((nextX > startX && nextY > startY) || (nextX < startX && nextY < startY)){
				newStartX = nextX;
				newStartY = startY;
			}
			else{
				newStartX = startX;
				newStartY = nextY;
			}
		}
	}

	cordinatePos[(size+i)*2] = newStartX;
	cordinatePos[(size+i)*2 +1] = newStartY;

	float inc = 2.0/size ;
	//color gradient depends on i
	colors[(size+i)*3] = 2.0-(inc*i);
	colors[(size+i)*3+1] = inc*i;
	colors[(size+i)*3+2] = 0;
	}
}
// calculate the VBO Index array indices for the next itertation of the fractal
unsigned int* expandIndices(unsigned int* v, int size){
	unsigned int* out = (unsigned int*)malloc(size*2*sizeof(unsigned int));
	for(int i = 0; i < (size * 2 - 1); i++){
		if((i%2) == 0){
		out[i] = v[i/2];
		}
		else{
		out[i] = size + i/2;
		}
	}
	return out;
}

int main( void )
{
	//Initializing varilbes
	unsigned int totalSize = 2;
	for(int i = 0; i < NUM_ITERATIONS; i++){
				totalSize = totalSize*2-1;
	}
	//init cordinates and colors
	GLfloat* lineCordinates = 	(GLfloat*)malloc(totalSize*2*sizeof(GL_FLOAT));
	GLfloat* colors =         	(GLfloat*)malloc(totalSize*3*sizeof(GL_FLOAT));
	unsigned int* indices = (unsigned int*)malloc(totalSize*sizeof(unsigned int));

	lineCordinates[0] = X_START;
	lineCordinates[1] = Y_START;
	lineCordinates[2] = X_END;
	lineCordinates[3] = Y_END;

	for(int i = 0; i < 6; i++){
		colors[i] = 1.0f;
	}

	indices[0] = 0;
	indices[1] = 1;
	int size = 2;
 //Done Initializng varibles



///////////////////  All OpenGL Code,  very little is mine, copied from opengl-tutorial.org (open source)
	// Initialise GLFW
	if( !glfwInit() )
	{
		fprintf( stderr, "Failed to initialize GLFW\n" );
		getchar();
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	window = glfwCreateWindow( 1080, 1080, "Dragon Fractal", NULL, NULL);
	if( window == NULL ){
		fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
		getchar();
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);

	// Initialize GLEW
	glewExperimental = true; // Needed for core profile
	if (glewInit() != GLEW_OK) {
		fprintf(stderr, "Failed to initialize GLEW\n");
		getchar();
		glfwTerminate();
		return -1;
	}

	// Ensure we can capture the escape key being pressed below
	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);
	glLineWidth(LINE_WIDTH);


	// Create and compile our GLSL program from the shaders
	GLuint programID = LoadShaders( "SimpleVertexShader.vertexshader", "SimpleFragmentShader.fragmentshader" );

	GLuint VertexArrayID;
	glGenVertexArrays(1, &VertexArrayID);
	glBindVertexArray(VertexArrayID);


	GLuint vertexbuffer[2];
	glGenBuffers(2, &vertexbuffer[0]);
	glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer[0]);
	glBufferData(GL_ARRAY_BUFFER, 2*totalSize*sizeof(GLfloat), lineCordinates, GL_STATIC_DRAW);


	glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer[1]); // Bind our second Vertex Buffer Object
	glBufferData(GL_ARRAY_BUFFER, 3*totalSize * sizeof(GLfloat), colors, GL_STATIC_DRAW); // Set the size and data of our VBO and set it to STATIC_DRAW


 GLuint elementbuffer;
 glGenBuffers(1, &elementbuffer);
 glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, elementbuffer);
 glBufferData(GL_ELEMENT_ARRAY_BUFFER, totalSize* sizeof(unsigned int), &indices[0], GL_STATIC_DRAW);

// create varibles for OpenGL CUDA interop
 cudaGraphicsResource* cudaResourceArray[3];
 GLfloat* deviceVertPtr;
 GLfloat* deviceColorPtr;
 unsigned int* deviceIndicesPtr;
 size_t sizePtr;
 std::clock_t    start;
 start = std::clock();
// Register OpenGL buffers with CUDA
 cudaGraphicsGLRegisterBuffer(&cudaResourceArray[0], vertexbuffer[0], cudaGraphicsRegisterFlagsNone);
 cudaGraphicsGLRegisterBuffer(&cudaResourceArray[1], vertexbuffer[1], cudaGraphicsRegisterFlagsNone);
 cudaGraphicsGLRegisterBuffer(&cudaResourceArray[2], elementbuffer, cudaGraphicsRegisterFlagsNone);
//Map resouces
 cudaGraphicsMapResources(3,cudaResourceArray,0);
//fetch devices pointers to be passed to CUDA kernel
 cudaGraphicsResourceGetMappedPointer((void**)&deviceVertPtr,&sizePtr,cudaResourceArray[0]);
 cudaGraphicsResourceGetMappedPointer((void**)&deviceColorPtr,&sizePtr,cudaResourceArray[1]);
 cudaGraphicsResourceGetMappedPointer((void**)&deviceIndicesPtr,&sizePtr,cudaResourceArray[2]);

//Launch the kernel and run for specific number of times.
 kernelInit(indices,size,totalSize);

 for(int i = 0; i < NUM_ITERATIONS; i++){
		 kernelLauncher(deviceVertPtr,deviceColorPtr,deviceIndicesPtr,size);
		 size = size*2-1;
 }
 kernelClose(deviceIndicesPtr,indices,size);
 cudaGraphicsUnmapResources(3,cudaResourceArray,0);

 std::cout << "Time: " << (std::clock() - start) / (double)(CLOCKS_PER_SEC / 1000) << " ms" << std::endl;



 glUseProgram(programID);



// This code is used to keep the window displaying the graphics.
	do{
		// Clear the screen
		glClear( GL_COLOR_BUFFER_BIT );

		glEnableVertexAttribArray(0);
		glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer[0]);
		glVertexAttribPointer(
			0,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
			2,                  // size
			GL_FLOAT,           // type
			GL_FALSE,           // normalized?
			0,                  // stride
			(void*)0            // array buffer offset
		);

		glEnableVertexAttribArray(1); // Enable the second vertex attribute array
		glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer[1]); // Bind our second Vertex Buffer Object
		glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, 0); // Set up our vertex attributes pointer

		// Draw the triangle !
		glDrawElements(
     GL_LINE_STRIP,      // mode
     size,    // count
     GL_UNSIGNED_INT,   // type
     (void*)0           // element array buffer offset
 );

		glDisableVertexAttribArray(0);
		glDisableVertexAttribArray(1);

		// Swap buffers
		glfwSwapBuffers(window);
		glfwPollEvents();
		//delete[] buffer_data;
	} // Check if the ESC key was pressed or the window was closed
	while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
		   glfwWindowShouldClose(window) == 0);

	// Cleanup VBO
	glDeleteBuffers(2, &vertexbuffer[0]);
	glDeleteVertexArrays(1, &VertexArrayID);
	glDeleteProgram(programID);

	free(colors);
	free(lineCordinates);
	free(indices);

	// Close OpenGL window and terminate GLFW
	glfwTerminate();

	return 0;
}
