// test_im2bw.sce
// Beginner-friendly test script for im2bw.sci

// Clear console and workspace for a clean run.
clc;
clear;

// Load function definition into Scilab session.
exec("im2bw.sci", -1);

// Create a sample grayscale image with values in [0, 255].
height = 5;
width = 6;
img = round(255 * rand(height, width));

// Set threshold value.
threshold = 120;

// Convert grayscale image to binary image.
bw = im2bw(img, threshold);

// Display input, threshold, and output.
disp("Input grayscale image:");
disp(img);

disp("Threshold value:");
disp(threshold);

disp("Output binary image (0 or 1):");
disp(bw);

// Display output size to verify dimensions are preserved.
disp("Size of input image:");
disp(size(img));

disp("Size of binary image:");
disp(size(bw));
