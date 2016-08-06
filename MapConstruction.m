%%
% 构建指纹库程序
% dataRssi_at_1.txt等文件是采集的指纹数据
% dataBssid.txt 为指纹库的SSID表


%% 获取数据到缓存
[RssMap]=map('dataBssid.txt','dataRssi_at_1.txt',38,65,102);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_3.txt',37,64,99);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_4.txt',37,63,100);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_5.txt',36,63,99);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_6.txt',37,65,96);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_7.txt',39,60,94);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_8.txt',34,60,96);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_9.txt',36,61,92);
[RssMap]=addMap(RssMap,'dataBssid.txt','dataRssi_at_10.txt',35,61,95);
    


%% 输出指纹库的txt
[m,n]=size(RssMap);
fp = fopen('C:\Users\yanyan\Desktop\map1.txt','wt');  %输出的指纹库存储地址
fprintf(fp, '%d ', n);
fprintf(fp, '%d ', m);
for i=1:m
    for j=1:n
        if j==n
           fprintf(fp, '%f ', RssMap(i,j));       
        elseif j==n-1
          fprintf(fp, '%f ', RssMap(i,j));        
        else
          fprintf(fp, '%d ', RssMap(i,j));        
        end
    end
end
fclose(fp);

%% 获取ssid列表
Bssid=textread('dataBssid.txt', '%s');
num=1;
    for i=1:size(Bssid, 1)
        if ( (strcmp('BSSID:',Bssid(i))==1) )
            if ( strcmp('SSID:',Bssid(i+1))==1)
                break;
            end
            BssidAddress(num,1)=Bssid(i+1);
            num=num+1;
            end
    end
BBB=cell2mat(BssidAddress);
    
%% 输出ssid的txt
fp = fopen('C:\Users\yanyan\Desktop\bssid1.txt','wt');  % 输出的BSSID表存储地址
for i=1:num-1
    for j=1:17
        fprintf(fp, '%s', BBB(i,j));
    end
    fprintf(fp, ' ');
end
fclose(fp);
    