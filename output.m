% fvertex=fopen('nvertex.txt','w');
% fprintf(fvertex,'%.3f\t%.1f\t%.1f\t%.1f\t%.1f\r\n',[temperature4,n_vertex(:,1),n_vertex(:,2),n_vertex(:,3),n_vertex(:,4)]');
% fclose(fvertex);
fmag=fopen('correlationSpaceY.txt','w');
%output_data=[(1:length(files))',corr(1:length(files),2000),(1:length(files))',corr(1:length(files),1500),(1:length(files))',corr(1:length(files),1000),(1:length(files))',corr(1:length(files),1)];
output_data=[(1:size(corr2,1))',corr2(:,1),(1:size(corr3,1))',corr3(:,1),(1:size(corr2,1))',corr2(:,2),(1:size(corr2,1))',corr3(:,2)];
fprintf(fmag,'%d\t%.2f\t%d\t%.2f\t%d\t%.2f\t%d\t%.2f\r\n',output_data');
fclose(fmag);
