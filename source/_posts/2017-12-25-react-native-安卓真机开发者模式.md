title: react native 安卓真机开发者模式
date: 2017-12-25 20:04:35
author: 郭立lee
category: react native
tags: [RN, android]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmt9r5ual8j30850643yp.jpg
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**目录**

- [踩坑](#%E8%B8%A9%E5%9D%91)
- [准备](#%E5%87%86%E5%A4%87)
  - [你需要开启USB调试才能在你的设备上安装你的APP。首先，确定你已经打开设备的USB调试开关](#%E4%BD%A0%E9%9C%80%E8%A6%81%E5%BC%80%E5%90%AFusb%E8%B0%83%E8%AF%95%E6%89%8D%E8%83%BD%E5%9C%A8%E4%BD%A0%E7%9A%84%E8%AE%BE%E5%A4%87%E4%B8%8A%E5%AE%89%E8%A3%85%E4%BD%A0%E7%9A%84app%E9%A6%96%E5%85%88%E7%A1%AE%E5%AE%9A%E4%BD%A0%E5%B7%B2%E7%BB%8F%E6%89%93%E5%BC%80%E8%AE%BE%E5%A4%87%E7%9A%84usb%E8%B0%83%E8%AF%95%E5%BC%80%E5%85%B3)
  - [确保手机电脑连接同一WiFi](#%E7%A1%AE%E4%BF%9D%E6%89%8B%E6%9C%BA%E7%94%B5%E8%84%91%E8%BF%9E%E6%8E%A5%E5%90%8C%E4%B8%80wifi)
  - [手机已打开*可出现在顶部的应用程序*权限](#%E6%89%8B%E6%9C%BA%E5%B7%B2%E6%89%93%E5%BC%80%E5%8F%AF%E5%87%BA%E7%8E%B0%E5%9C%A8%E9%A1%B6%E9%83%A8%E7%9A%84%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E6%9D%83%E9%99%90)
  - [[注意] android中setUseDeveloperSupport为true](#%E6%B3%A8%E6%84%8F-android%E4%B8%ADsetusedevelopersupport%E4%B8%BAtrue)
  - [摇晃设备，打开开发者菜单。](#%E6%91%87%E6%99%83%E8%AE%BE%E5%A4%87%E6%89%93%E5%BC%80%E5%BC%80%E5%8F%91%E8%80%85%E8%8F%9C%E5%8D%95)
- [后话](#%E5%90%8E%E8%AF%9D)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## 踩坑

>* 安卓真机调试，摇一摇无法唤醒开发菜单
>* react native 安卓无法打开开发者菜单
>* react native无法调试
>* 安卓开发者模式出不来

## 准备

### 你需要开启USB调试才能在你的设备上安装你的APP。首先，确定你已经[打开设备的USB调试开关](https://www.baidu.com/s?wd=%E5%AE%89%E5%8D%93%E6%89%93%E5%BC%80usb%E8%B0%83%E8%AF%95)

### 确保手机电脑连接同一WiFi

### 手机已打开*可出现在顶部的应用程序*权限

各个手机设置方法不一致，以三星s6为例
`设置 --> 应用程序 --> [对应的程序] --> 高级设置(出现在顶部的应用程序)`

### [注意] android中setUseDeveloperSupport为true

```java
public static ReactInstanceManager buildBundle(Activity activity, String register, String bundle){

        return ReactInstanceManager.builder()
                .setApplication(activity.getApplication())
                .setJSBundleFile(getLocalBundlePath(activity) + bundle)
                .setJSMainModuleName("index.android")
                .addPackage(new MainReactPackage())
                .addPackage(new StoreReactPackage())
                .setUseDeveloperSupport(CommonConfig.isDebug) //这里必须设置成true
                .setInitialLifecycleState(LifecycleState.RESUMED)
                .build();
    };
```

### 摇晃设备，打开开发者菜单。

`Dev Settings --> Debug server host for device --> 输入你电脑的IP地址和端口号`

----

## 后话
至此全部准备工作完成，开始你愉快的RN开发旅程吧。 如有什么疑问欢迎下方留言。
