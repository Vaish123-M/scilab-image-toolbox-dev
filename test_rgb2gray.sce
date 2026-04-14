// test_rgb2gray.sce
// Beginner-friendly test script for rgb2gray.sci

// Clear console and workspace for a clean run.
clc;
clear;

// Load function definition into Scilab session.
exec("rgb2gray.sci", -1);

// Create a sample RGB image with random values in [0, 1].
height = 4;
width = 5;
img = rand(height, width, 3);

// Call rgb2gray function.
gray = rgb2gray(img);

// Display full input and output matrices.
disp("Input RGB image (all three channels):");
disp(img);

disp("Output grayscale image:");
disp(gray);

// Display dimensions to verify conversion from 3D to 2D.
disp("Size of input image [height width channels]:");
disp(size(img));

disp("Size of grayscale image [height width]:");
disp(size(gray));
