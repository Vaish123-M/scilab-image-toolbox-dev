# rgb2gray in Scilab

Simple Scilab implementation of RGB to grayscale conversion.

## Formula Used

gray = 0.2989*R + 0.5870*G + 0.1140*B

## Files

- rgb2gray.sci: function with input validation
- test_rgb2gray.sce: test script using random RGB image

## Run in Scilab

```scilab
exec("rgb2gray.sci", -1);
exec("test_rgb2gray.sce", -1);
```

## Input and Output

- Input: RGB image as 3D matrix (height x width x 3)
- Output: Grayscale image as 2D matrix (height x width)
