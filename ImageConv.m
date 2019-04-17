%% Image Convetor 
% to convert format of image
% eg. .pgm to .jpg

clc;
clear ;
X=dir('C:\Users\admin\Desktop\x\*.pgm'); %Loading image directory 
Y=dir('C:\Users\admin\Desktop\x\*.pgm');

%% image labeling

for i=1:length(X)
Y(i).name = "mdb00"+i+".jpg";
end

%% image format convergion

for i=1:length(X)
    close
    filename=strcat('C:\Users\admin\Desktop\x\',X(i).name);
    I=imread(filename);
    path=strcat('C:\Users\admin\Desktop\x\save\',Y(i).name);
    imwrite(I,path);
    % progress
    i
end
