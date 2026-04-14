function bw = im2bw(img, threshold)
    // im2bw - Convert grayscale image to binary image using a threshold.
    //
    // Syntax:
    //   bw = im2bw(img, threshold)
    //
    // Input:
    //   img       - Grayscale image as 2D numeric matrix
    //   threshold - Scalar threshold value
    //
    // Output:
    //   bw        - Binary image (0 or 1) with same height and width as input

    // Validate number of input arguments.
    if argn(2) <> 2 then
        error("im2bw: Exactly two input arguments are required (img, threshold).");
    end

    // Validate image type (decimal or integer numeric matrix).
    if and(type(img) <> [1 8]) then
        error("im2bw: Input image must be a numeric matrix.");
    end

    // Validate threshold type (decimal or integer numeric value).
    if and(type(threshold) <> [1 8]) then
        error("im2bw: Threshold must be numeric.");
    end

    // Input image must be grayscale (2D matrix only).
    dims = size(img);
    if size(dims, "*") <> 2 then
        error("im2bw: Input image must be a 2D grayscale matrix.");
    end

    // Threshold must be a single scalar value.
    if size(threshold, "*") <> 1 then
        error("im2bw: Threshold must be a scalar value.");
    end

    // Clamp threshold range to common 8-bit image range.
    if threshold < 0 | threshold > 255 then
        error("im2bw: Threshold must be in the range [0, 255].");
    end

    // Convert image to double for consistent comparison.
    img = double(img);
    threshold = double(threshold);

    // Create output matrix initialized with zeros.
    bw = zeros(img);

    // Apply binary threshold condition:
    // pixel > threshold => 1, otherwise 0.
    idx = find(img > threshold);
    bw(idx) = 1;
endfunction
