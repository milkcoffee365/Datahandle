function [Map2]=addMap(Map1,dataBssid,dataMap,n1,n2,n3);
%**************************************************************
%与map函数结合，增加数据
%****************************************************************
    data=map(dataBssid,dataMap,n1,n2,n3);
    n=size(data,1);
    m=size(Map1);
    Map2=Map1;
    Map2(m+1:m+n,:)=data;
    
    
end