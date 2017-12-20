
function OutputImage = LocalizedRadonTransform(InputImage)
    Label = bwconncomp(InputImage);
    props = regionprops(Label,'BoundingBox');
    cr = zeros(1,4);
    area = -1;
%     hold on
    for k=1:length(props)
        if props(k).BoundingBox(3)*props(k).BoundingBox(4) > area
           cr = props(k).BoundingBox;
           area = props(k).BoundingBox(3)*props(k).BoundingBox(4);
        end
%         rectangle('Position',props(k).BoundingBox,'EdgeColor','b','LineWidth',2);
    end
%     hold off
    InputImage = imcrop(InputImage,cr);
%     for k=1:length(props)
%         if props(k).BoundingBox(3)*props(k).BoundingBox(4)>16
%             img = imcrop(InputImage,props(k).BoundingBox);
%             figure,imshow(img);
%         end
%     end
    figure,imshow(InputImage,[]),title('Localized Area/Wake');
    theta = 0:0.1:179.5;
    [R1,xp1] = radon(InputImage,theta);
    figure, imshow(R1, [],'XData', xp1([1 end]),'YData', [179.5 0]),title('Localized Radon');
    OutputImage = R1;
end