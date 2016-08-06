# 数据处理工具包

## 简介
+  [处理Wifi Rss and Magnetic Detect软件测量得到的数据](https://github.com/jiangqideng/WifiRss_and_Magnetic_Detect)
+  [利用处理好的数据构建指纹库用于WiFiLocalizationDemo软件使用](https://github.com/jiangqideng/WiFiLocalizationDemo)
+  语言为MatLab

## 函数介绍
+ getRssi：将.txt文件转化为.mat文件
+ map: 取数据程序
+ addMap：为map程序运行后的结果中增加数据的程序
+ getOrder: 根据指纹库的BSSID表得到当前数据的BSSID顺序
+ wifiOrder：提取wifi的顺序

## 程序说明
+ ApNumberWatch：观测数据中AP个数的程序
+ MapConstruction：构建指纹库的程序
+ watchData：观测数据的程序

## 使用说明

+ 首先利用Wifi Rss and Magnetic Detect软件围绕一个正方形的走廊走n圈采集数据，每一圈为一组数据
+ 然后利用watchData程序查看每组数据中四段程序的数据分割点，根据z轴角度的变化分割数据
+ 然后利用MapConstruction程序构建指纹库
+ 把指纹库和BSSID表输出到电脑中指定的位置

## 示例
+ dataRssi_at_.txt几个文件为采集的几组原始数据
+ dataBssid_1.txt为采集数据的BSSID文件

##其他
+ 这个工具包现只适用于正方形的走廊中提取的数据的处理与指纹库的构建
+ 典型的走廊结构如下图所示
+ ![](https://raw.githubusercontent.com/DouXiaoZhi/DataHandle/master/device-2016-03-01-214949.png)
