%%
%观测数据的程序


%%
%产看数据
data=getRssi('dataRssi_1.txt');    %data中存放测量的所有数据：RSS、磁场、角度
D=data(:,1:end-6);                           % D中存放磁场和角度数据   

%%
%查看改组数据中AP的个数
D(find(D(:,:)<-80))=0;
n=size(D,1);
ap_number=zeros(n,1);
for i=1:n
    ap_number(i)=length(find(D(i,:)~=0 ));
end
