%%
% simulate�����ʾ����
% �Ƚ���zoo_tezhen_test

%TEZHEN_sumT = TEZHEN_sum';      %input
%gammaT = gamma';                %target
TEZHEN_testT = TEZHEN_test';    %simulate input
%
[rimg,cimg,~] = size(img);
px = network2_outputs';
fg_gmm = zeros(rimg*cimg,1);
for i_gmm = 1:rimg*cimg
    if px(i_gmm,1) > px(i_gmm,2)
        fg_gmm(i_gmm,1) = 1;
    end
end
fg_gmm_pic = reshape(fg_gmm,rimg,cimg);
figure;imshow(fg_gmm_pic,[],'border','tight');
%ɾ��С�������
bw = bwareaopen(~fg_gmm_pic, 50);               %���׿�
% figure;imshow(bw,[],'border','tight');
bw = bwareaopen(~bw, 50);                       %���ڿ�
% figure;imshow(bw,[],'border','tight');
mask_index_gmm = bw;
figure;imshow(mask_index_gmm,[],'border','tight');
% ����Ϊtif����Ҫ����PSת��ֵ