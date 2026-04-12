// test_rgb2gray.sce
// Test script for rgb2gray.sci

clc;
clear;

// Load the function file.
exec("rgb2gray.sci", -1);

// Create a sample RGB image (random values in range [0, 1]).
height = 4;
width = 5;
rgb = rand(height, width, 3);

// Convert to grayscale.
gray = rgb2gray(rgb);

// Display dimensions and values.
disp("Input RGB image size (height x width x channels):");
disp(size(rgb));

disp("Output grayscale image size (height x width):");
disp(size(gray));

disp("Sample RGB image (first channel - Red):");
disp(rgb(:, :, 1));

disp("Resulting grayscale image:");
disp(gray);
