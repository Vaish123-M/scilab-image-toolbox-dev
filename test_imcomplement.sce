// test_imcomplement.sce
// Beginner-friendly test script for imcomplement.sci

// Clear console and workspace for a clean run.
clc;
clear;

// Load function definition.
exec("imcomplement.sci", -1);

// Create sample grayscale image (values in range 0 to 255).
height = 4;
width = 5;
gray_img = round(255 * rand(height, width));

// Create sample RGB image (values in range 0 to 255).
rgb_img = round(255 * rand(height, width, 3));

// Compute negatives.
neg_gray = imcomplement(gray_img);
neg_rgb = imcomplement(rgb_img);

// Display grayscale input and output.
disp("Grayscale input image:");
disp(gray_img);

disp("Grayscale negative image:");
disp(neg_gray);

// Display RGB input and output.
disp("RGB input image (all channels):");
disp(rgb_img);

disp("RGB negative image (all channels):");
disp(neg_rgb);

// Display sizes to verify output dimensions.
disp("Size of grayscale input:");
disp(size(gray_img));

disp("Size of grayscale negative:");
disp(size(neg_gray));

disp("Size of RGB input:");
disp(size(rgb_img));

disp("Size of RGB negative:");
disp(size(neg_rgb));
