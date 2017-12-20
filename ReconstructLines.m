function Output = ReconstructLines(InputImage)
    theta = 0:0.1:179.5;
    I1 = iradon(InputImage,theta,'Hann');
    Output = I1;
end