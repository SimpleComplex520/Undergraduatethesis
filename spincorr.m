pt='C:\Users\RandomNone\Documents\Visual Studio 2013\Projects\spincorr\spincorr\undergraduate5\';
pre='spin_';
suf='.dat';
files=dir([pt pre '*' suf]);
N=64;
M=65;
%spinx=cell(65,64,length(files));
spinx=[];
for k=1:length(files)
    nm=[pt files(k).name];
    files(k).name
    spin_temp=importdata(nm,'\t');
    spinx(:,:,k)=spin_temp;
end
%%
corr=zeros(length(files),length(files));
for k=1:length(files)
    count=0;
    for j=1:length(files)-k+1
        corr(k,j)=sum(sum(spinx(:,:,j).*spinx(:,:,k+j-1)));
    end
end
corr=corr/((N+1)*M);
%%
corr2=zeros(length(files),N-1);
for k=1:length(files)
    for j=1:N-1
        corr2(k,j)=sum(sum(spinx(:,:,k).*[spinx(:,j+1:N,k),spinx(:,1:j,k)]));
    end
end
corr2=corr2/(N*M);
%%
corr3=zeros(length(files),M-1);
for k=1:length(files)
    for j=1:N-1
        corr3(k,j)=sum(sum(spinx(:,:,k).*[spinx(j+1:M,:,k);spinx(1:j,:,k)]));
    end
end
corr3=corr3/(N*M);

%%


    
    


