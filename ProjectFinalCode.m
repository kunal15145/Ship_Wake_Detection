% Project Code for Ship Wake Detection Using Localized Radon
% Transform

alphaForWeibullpdf = 1.11;
BetaForWeibullpdf = 0.8;

% imageToProcess = imread('Dataset/Live SAR images Dataset/live5.png');
% imageToProcess = rgb2gray(imageToProcess);
% figure,imshow(imageToProcess);
% % level = graythresh(imageToProcess);
% % imageToProcess = imbinarize(imageToProcess,level);
% % figure,imshow(imageToProcess);
% imageWithNoise = LocalizedRadonTransform(imageToProcess);
% image1 = PerformThresholding(imageWithNoise);
% % image = PerformMorphology(image);
% theta = 0:0.1:179.5;
% I1 = iradon(image,theta,'Hann');
% figure,imshow(I1,[]);
imageWithNoise=zeros(100,100);
imageWithNoise(98,98)=1;
theta = 0:0.1:179.5;
[R1,xp1] =radon(imageWithNoise,theta);
figure, imshow(R1, [],'XData', xp1([1 end]),'YData', [179.5 0])
% theta = 0:0.1:179.5;
% InputImage = imread('Dataset/Artificial Dataset/img12.png');
% imageToProcess = rgb2gray(InputImage);
% imageWithNoise = AddNoise(imageToProcess,alphaForWeibullpdf,BetaForWeibullpdf);
% [R1,xp1] =radon(imageWithNoise,theta);
% figure, imshow(R1, [],'XData', xp1([1 end]),'YData', [179.5 0])
% image = PerformThresholding(R1);
% % image = PerformMorphology(image);
% theta = 0:0.1:179.5;
% I1 = iradon(image,theta,'Hann');
% figure,imshow(I1,[]);
 
% imageToProcess = imread('Dataset/Artificial Dataset/img4.png');
% figure,imshow(imageToProcess);
% imageToProcess = rgb2gray(imageToProcess);
% imageWithNoise = AddNoise(imageToProcess,alphaForWeibullpdf,BetaForWeibullpdf);
% figure,imshow(imageWithNoise);
% imageWithNoise = LocalizedRadonTransform(imageWithNoise);
% imageWithReducedNoise = PerformThresholding(imageWithNoise);
% imageMorphed = PerformMorphology(imageWithReducedNoise);
% finalImage = ReconstructLines(imageWithReducedNoise);
% figure,imshow(finalImage,[]),title('Reconstructed Image');