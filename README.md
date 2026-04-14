# Scilab Image Functions

Simple Scilab implementations of basic image processing functions.

## rgb2gray Formula

gray = 0.2989*R + 0.5870*G + 0.1140*B

## im2bw Rule

if pixel > threshold then 1 else 0

## Files

- rgb2gray.sci: function with input validation
- test_rgb2gray.sce: test script using random RGB image
- imcomplement.sci: image negative function for grayscale and RGB images
- test_imcomplement.sce: test script for image negative
- im2bw.sci: binary thresholding function for grayscale images
- test_im2bw.sce: test script for binary thresholding

## Run in Scilab

```scilab
exec("rgb2gray.sci", -1);
exec("test_rgb2gray.sce", -1);

exec("imcomplement.sci", -1);
exec("test_imcomplement.sce", -1);

exec("im2bw.sci", -1);
exec("test_im2bw.sce", -1);
```

## Input and Output

- Input: RGB image as 3D matrix (height x width x 3)
- Output: Grayscale image as 2D matrix (height x width)

## im2bw Input and Output

- Input: Grayscale image as 2D matrix and a scalar threshold in [0, 255]
- Output: Binary image as 2D matrix with values 0 or 1
