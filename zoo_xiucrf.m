% ��denseCRF��������о���
[filename, pathname] = uigetfile({'*.jpg'; '*.bmp'; '*.gif'; '*.png' }, 'ѡ��ͼƬ');
if filename == 0
    return;
end
mask_crf = imread([pathname, filename]);

%ɾ��С�������
bw = bwareaopen(~mask_crf, 10);               %���׿�
% figure;imshow(bw,[],'border','tight');
bw = bwareaopen(~bw, 10);                       %���ڿ�
% figure;imshow(bw,[],'border','tight');
mask_index_crf = bw;
figure;imshow(mask_index_crf,[],'border','tight');
% ����Ϊtif����Ҫ����PSת��ֵ