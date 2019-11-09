# CUDA-DFrac

This program generates cordinates which represent a dragon fractal and uses OpenGL to display them as shown below:

![alt text](https://i.imgur.com/CLpNYtq.png)


NVIDIA's CUDA is used for a significant speedup in calculation of the cordinates by taking advantage of data parallelism in the problem.

Requirements:
Linux OS, with the follow libraries, tools, and compilers: 
cmake make g++ libx11-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxrandr-dev libxext-dev libxcursor-dev libxinerama-dev libxi-dev

CUDA tooklit, found here: https://developer.nvidia.com/cuda-downloads

Usage:
To run the program enter these commands in the terminal from the main directory:

cd build

cmake ..

make all

./dragonfrac

