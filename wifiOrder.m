function [Wifi,Order]=wifiOrder(txt)
%********************************************
%提取wifi顺序
%Wifi输出的是每个wifi的ip地址
%Order输出的是Wifi的顺序
%********************************************
Temp=textread(txt,'%s');
m=size(Temp,1);
com='BSSID:';
num=1;
    for i=1:m
        if ( (strcmp(com,Temp(i))==1) )
            if ( strcmp('SSID:',Temp(i+1))==1)
                break;
            end
            Wifi(num,1)=Temp(i+1);
            Order(num,1)=num;
            num=num+1;
            
            
%             A=Temp(i+4);
%             B=Temp(i+5);
%             C=Temp(i+6);
%             if (strcmp(com,A)==1)
%                 Wifi(num,1:2)=Temp(i+1:i+2);
%             elseif(strcmp(com,B)==1)
%                 Wifi(num,1:3)=Temp(i+1:i+3);
%             elseif(strcmp(com,C)==1)
%                 Wifi(num,1:4)=Temp(i+1:i+4);
%             end
%             Order(num,1)=num;
%             num=num+1;
        end
    end
end