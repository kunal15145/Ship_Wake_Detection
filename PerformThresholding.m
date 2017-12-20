

function Output = PerformThresholding(InputImage)
    InputImage = wiener2(InputImage,[5 5]);
    figure,imshow(InputImage,[]),title('Thresholded image');
    Output = InputImage;
end