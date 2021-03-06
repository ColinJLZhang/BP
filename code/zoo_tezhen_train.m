train_num = 9;
TEZHEN_sum = [];
for itrain = 1:train_num
    
img = [];img_Lab = [];x0 = [];y0 = [];z1 = [];z2 = [];Inimage = [];tfb1 = [];tezhen = [];TEZHEN = [];
[filename, pathname] = uigetfile({'*.jpg'; '*.bmp'; '*.gif'; '*.png' }, '选择图片');
img = imread([pathname, filename]);
[rimg,cimg,~] = size(img);
cform = makecform('srgb2lab');       %rgb空间转换成lab空间 matlab自带的用法
img_Lab = applycform(img, cform); 

% pillbox滤波器
pillFilter = fspecial('disk',3);
tfb1(:,:,1) = imfilter(img_Lab(:,:,2), pillFilter, 'replicate');

% DoG滤波器
p2 = [5,5]; %模板尺寸
% DoG算子的方差设置 方差1<方差2
sigma1 = 1; 
sigma2 = 4;
siz = (p2-1)/2;
[x0,y0] = meshgrid(-siz(1):1:siz(1),-siz(2):1:siz(2));
z1 = exp(-(x0.*x0+y0.*y0)/(2*sigma1.^2))/sqrt(2*pi*sigma1.^2);
z2 = exp(-(x0.*x0+y0.*y0)/(2*sigma2.^2))/sqrt(2*pi*sigma2.^2);
z3 = z1 -z2;
Inimage = img_Lab(:,:,1);
tfb1(:,:,2) = conv2(double(Inimage), double(z3),'same');

% 线性组合
ftfb = tfb1(:,:,1) + tfb1(:,:,2);
% alpha = 1/50;
% FTFB = exp(-alpha * double(abs(ftfb)));
tezhen(:,:,1) = img_Lab(:,:,2);
tezhen(:,:,2) = img_Lab(:,:,3);
tezhen(:,:,3) = ftfb;

TEZHEN = reshape(tezhen,rimg*cimg,3);
TEZHEN_sum = [TEZHEN_sum;TEZHEN];

end
TEZHEN_sum = TEZHEN_sum';