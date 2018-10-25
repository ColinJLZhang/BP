% 前景背景分割训练
% clc;

% 9张训练图（黑白前景背景groundtruth）组成gamma

% fg_train1 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant062_fg.png');
fg_train1 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant061_fg.png');
[r1,c1] = size(fg_train1);
fg_train1 = reshape(fg_train1,r1*c1,1);
% fg_train2 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant063_fg.png');
fg_train2 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant062_fg.png');
[r2,c2] = size(fg_train2);
fg_train2 = reshape(fg_train2,r2*c2,1);
% fg_train3 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant064_fg.png');
fg_train3 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant063_fg.png');
[r3,c3] = size(fg_train3);
fg_train3 = reshape(fg_train3,r3*c3,1);
% fg_train4 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant065_fg.png');
fg_train4 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant064_fg.png');
[r4,c4] = size(fg_train4);
fg_train4 = reshape(fg_train4,r4*c4,1);
% fg_train5 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant066_fg.png');
fg_train5 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant065_fg.png');
[r5,c5] = size(fg_train5);
fg_train5 = reshape(fg_train5,r5*c5,1);
% fg_train6 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant067_fg.png');
fg_train6 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant066_fg.png');
[r6,c6] = size(fg_train6);
fg_train6 = reshape(fg_train6,r6*c6,1);
% fg_train7 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant068_fg.png');
fg_train7 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant067_fg.png');
[r7,c7] = size(fg_train7);
fg_train7 = reshape(fg_train7,r7*c7,1);
% fg_train8 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant069_fg.png');
fg_train8 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant068_fg.png');
[r8,c8] = size(fg_train8);
fg_train8 = reshape(fg_train8,r8*c8,1);
% fg_train9 = imread('C:\Users\59320\Desktop\1\诺丁汉大学方法汇总\LSC评价\（2）植株分割\extractdataset\Plant_segmentation\Ara2012\ara2012_plant070_fg.png');
fg_train9 = imread('E:\研究生\matlab图像分割\王怡BP\叶片数据集\孙桥黑白\ara2012_plant069_fg.png');
[r9,c9] = size(fg_train9);
fg_train9 = reshape(fg_train9,r9*c9,1);
fg_train = [fg_train1;fg_train2;fg_train3;fg_train4;fg_train5;fg_train6;fg_train7;fg_train8;fg_train9];
[r,c] = size(fg_train);
gamma = zeros(r*c,2);
gamma(fg_train==255,1)=1;
gamma(fg_train==0,2)=1;

% % 9张训练图（特征向量）
% data=double(TEZHEN_sum);
% n_center=2;
% thresh=0.0005;
% [u,sigma,p,px]=GMM_train(data,n_center,thresh,gamma);     %加gamma
% 
% disp('Train Completed !');
gamma = gamma';   