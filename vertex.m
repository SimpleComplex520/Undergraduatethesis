pt='C:\Users\RandomNone\Documents\Visual Studio 2013\Projects\SpinIceTrainingData\SpinIceTrainingData\undergraduate\';
pre='vertex_';
suf='.dat';
files=dir([pt pre '*' suf]);
N=40;
M=40;
VERTEX_SIZE=N*M;
temperature4=zeros(length(files),1);
n_vertex=zeros(29,4);
tem=[];
for k=1:length(files)
    nm=[pt files(k).name];
    files(k).name
    tem=importdata(nm,' ');
    size(tem)
    for i=1:4
        n_vertex(k,i)=size(find(~(tem-i)),1)/100;
    end
    temperature4(k)=str2double(files(k).name(1,8:(size(files(k).name,2)-4))');
end

