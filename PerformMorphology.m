function Output = PerformMorphology(InputImage)
    [~,~] = size(InputImage);
    dilSe = strel('rectangle',[16,16]); 
    temp = imdilate(InputImage,dilSe);
    se = strel('rectangle',[32,32]);
    erodedBW = imerode(temp,se);
    figure,imshow(erodedBW,[]);
    Output = erodedBW;
end