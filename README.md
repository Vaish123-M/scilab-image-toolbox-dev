# Scilab Image Toolbox: rgb2gray

This repository contains a beginner-friendly implementation of `rgb2gray` for Scilab, similar to the idea used in Octave image processing workflows.

## Function Description

`rgb2gray` converts an RGB image (3 channels) into a grayscale image (single channel) using a weighted luminance formula.

Formula used:

`gray = 0.2989*R + 0.5870*G + 0.1140*B`

## Syntax

```scilab
gray = rgb2gray(rgb)
```

## Parameters

- `rgb`: A 3D matrix of size `(height x width x 3)`.
  - `rgb(:, :, 1)` is Red channel
  - `rgb(:, :, 2)` is Green channel
  - `rgb(:, :, 3)` is Blue channel

## Return Value

- `gray`: A 2D matrix of size `(height x width)` containing grayscale intensity values.

## Files

- `rgb2gray.sci`: Function definition.
- `test_rgb2gray.sce`: Test script that creates sample data, calls the function, and displays results.

## How To Run

In Scilab console, run:

```scilab
exec("test_rgb2gray.sce", -1);
```

## Test Cases (with explanation)

1. **Random RGB image (basic functionality)**
	- Input: `rand(h, w, 3)`
	- Expectation: Output is a `h x w` matrix with weighted grayscale values.

2. **All zeros image (black image)**
	- Input: `zeros(h, w, 3)`
	- Expectation: Output is all zeros.

3. **All ones image (white image)**
	- Input: `ones(h, w, 3)`
	- Expectation: Output values are close to `1` because coefficients sum approximately to `1`.

4. **Invalid channel count (error handling)**
	- Input: matrix of size `(h x w x 2)` or `(h x w x 4)`
	- Expectation: Function throws a clear error message that exactly 3 channels are required.
