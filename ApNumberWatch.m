% 查看所读取数据的AP个数的程序
% 构建指纹库之前先查看AP个数，建指纹库要用到
% dataBssid_2.txt为所得到数据的wifi的SSID表


[Test]=map('dataBssid_2.txt','dataRssi_2.txt',32,56,87);
Test=changeOrder(Test, 'dataBssid.txt', 'dataBssid_2.txt');

D=Test(:, 1:end-2);

n=size(D, 1);
for i=1:n
    p(i)=nnz(D(i, :));
end

disp(['采集数据的AP个数为：', num2str(size(p, 2))]);