function neg = imcomplement(img)
    // imcomplement - Compute image negative using 255 - pixel.
    //
    // Syntax:
    //   neg = imcomplement(img)
    //
    // Input:
    //   img - Grayscale image (2D matrix) or RGB image (3D matrix)
    //
    // Output:
    //   neg - Negative image with same dimensions as input

    // Validate number of input arguments.
    if argn(2) <> 1 then
        error("imcomplement: Exactly one input argument is required.");
    end

    // Validate numeric input type (decimal or integer matrix).
    if and(type(img) <> [1 8]) then
        error("imcomplement: Input must be a numeric matrix.");
    end

    // Get input dimensions and validate shape.
    dims = size(img);
    nd = size(dims, "*");

    // Accept only 2D grayscale or 3D RGB matrices.
    if nd <> 2 & nd <> 3 then
        error("imcomplement: Input must be 2D grayscale or 3D RGB matrix.");
    end

    // If 3D, require 3 channels for RGB.
    if nd == 3 & dims(3) <> 3 then
        error("imcomplement: 3D input must have exactly 3 channels (RGB).");
    end

    // Convert to double for consistent arithmetic.
    img = double(img);

    // Compute negative image.
    neg = 255 - img;
endfunction
