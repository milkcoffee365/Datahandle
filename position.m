function [p]=position(x1,y1,x2,y2,m)
%     x1=0;
%     y1=0;
%     x2=10;
%     y2=0;
%     m=11;
    p=zeros(m,2);
    PathL=sqrt((x1-x2)^2+(y1-y2)^2);
    SinThet=(y2-y1)/PathL;
    CosThet=(x2-x1)/PathL;
    GridX=PathL/(m-1)*CosThet;
    GridY=PathL/(m-1)*SinThet;
    for i=1:m
        p(i,1)=x1+(i-1)*GridX;
        p(i,2)=y1+(i-1)*GridY;
    end

end