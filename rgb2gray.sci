function gray = rgb2gray(rgb)
    // rgb2gray - Convert an RGB image to grayscale.
    //
    // Syntax:
    //   gray = rgb2gray(rgb)
    //
    // Input:
    //   rgb  - 3D image matrix of size (height x width x 3).
    //
    // Output:
    //   gray - 2D grayscale image matrix of size (height x width).

    // Check that input has exactly 3 dimensions.
    dims = size(rgb);
    if size(dims, "*") <> 3 then
        error("rgb2gray: Input must be a 3D matrix of size (height x width x 3).");
    end

    // Check that the third dimension has exactly 3 channels (R, G, B).
    if dims(3) <> 3 then
        error("rgb2gray: Input must have exactly 3 channels in the third dimension.");
    end

    // Extract channels.
    R = rgb(:, :, 1);
    G = rgb(:, :, 2);
    B = rgb(:, :, 3);

    // Weighted sum conversion using standard luminance coefficients.
    gray = 0.2989 * R + 0.5870 * G + 0.1140 * B;
endfunction
