% 对denseCRF的输出进行精修
[filename, pathname] = uigetfile({'*.jpg'; '*.bmp'; '*.gif'; '*.png' }, '选择图片');
if filename == 0
    return;
end
mask_crf = imread([pathname, filename]);

%删除小面积对象
bw = bwareaopen(~mask_crf, 10);               %除白孔
% figure;imshow(bw,[],'border','tight');
bw = bwareaopen(~bw, 10);                       %除黑孔
% figure;imshow(bw,[],'border','tight');
mask_index_crf = bw;
figure;imshow(mask_index_crf,[],'border','tight');
% 保存为tif，还要经过PS转二值