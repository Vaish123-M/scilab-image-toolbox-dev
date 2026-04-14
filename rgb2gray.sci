function gray = rgb2gray(img)
    // rgb2gray - Convert RGB image to grayscale image.
    //
    // Syntax:
    //   gray = rgb2gray(img)
    //
    // Input:
    //   img  - Numeric 3D matrix of size (height x width x 3)
    //
    // Output:
    //   gray - 2D matrix of size (height x width)

    // Validate number of input arguments.
    if argn(2) <> 1 then
        error("rgb2gray: Exactly one input argument is required.");
    end

    // Validate numeric data type (decimal or integer matrices).
    if and(type(img) <> [1 8]) then
        error("rgb2gray: Input must be a numeric matrix.");
    end

    // Validate that input is a 3D matrix.
    dims = size(img);
    if size(dims, "*") <> 3 then
        error("rgb2gray: Input must be a 3D matrix of size (height x width x 3).");
    end

    // Validate that image has exactly 3 channels.
    if dims(3) <> 3 then
        error("rgb2gray: Third dimension must be 3 (R, G, B channels).");
    end

    // Convert to double so formula works consistently for integer inputs.
    img = double(img);

    // Extract R, G, B channels using Scilab indexing.
    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    // Apply standard grayscale conversion formula.
    gray = 0.2989 * R + 0.5870 * G + 0.1140 * B;
endfunction
