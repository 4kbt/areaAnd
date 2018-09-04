more off;

%generate a pattern

wedgeMaster = imread('wedgependulum.bmp');
wedgeMaster = ~wedgeMaster;
wedgeMaster = 1.0*wedgeMaster;

%rotate a pattern

pattern1 = wedgeMaster;

vals = [];
tic
for ang = 0:.1:360 
	pattern2 = imrotate(wedgeMaster, ang, 'nearest', 'crop');

	pattern2(isnan(pattern2)) = 0;

	imshow(pattern2 & pattern1);

	vals = [vals; ang sum(sum(pattern1 & pattern2))];

	ang
end
toc
