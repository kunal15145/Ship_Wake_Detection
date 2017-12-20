% Adding Noise
% according to Weibull Distribution

function result = AddNoise(InputImage,alpha,beta)
%     [row,col] = size(InputImage);
%     for i=1:row
%         for j=1:col
%             inputValue = wblpdf(double(InputImage(i,j)),alpha,beta);
%             output = 255*(inputValue);
%             InputImage(i,j) = double(InputImage(i,j)) + output;
%         end
%     end
%     result = InputImage;
%      result = imnoise(InputImage,'salt & pepper',min(min(wblpdf(double(InputImage),alpha,beta)))*10^34);
result = imnoise(InputImage,'gaussian',0,4);
     figure,imshow(result),title('Noisy Image');
end