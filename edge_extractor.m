clc; clear all; close all;

contents = dir('*.jpg');

%Loop through images and perform edge detection
for i = 1:numel(contents)
    fn = contents(i).name;
    im = imread(fn);
    %Convert to grayscale
    grayim = rgb2gray(im);
    %Canny edge detector
    edgeim = ~edge(grayim,'Canny');
    %Convert to 3 channels
    edgeim3 = cat(3,edgeim,edgeim,edgeim);

    path = strcat('../nike_shoes_edge_3ch/nikeshoeedge',int2str(i),'.jpg');
    imwrite(edgeim3,path,'jpg');  
end