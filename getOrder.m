function [n]=getOrder(Bssid1,Bssid2)
%*****************************************************
%得到wifi顺序
%Bssid1表示指纹库的wifi顺序，Bssid2为定位数据的wifi顺序
%*****************************************************
    [MapWifi,MapOrder]=wifiOrder(Bssid1);
    [TestWifi,TestOrder]=wifiOrder(Bssid2);
    flag=0;
    for i=1:size(MapWifi,1)  
        
        for j=1:size(TestWifi,1)
            if (strcmp(MapWifi(i),TestWifi(j))==1)  %比较指纹库的ip地址是否与定位数据的ip地址一致
                n(i,1)=TestOrder(j);
                flag=1;
            end
        end
        
        if(flag==0)
            n(i,1)=0;
        elseif(flag==1)
            flag=0;
        end
        
    end
    
   
end
