title: react native 安卓真机开发者模式
date: 2017-12-25 20:04:35
author: 郭立lee
category: react native
tags: [RN, android]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmt9r5ual8j30850643yp.jpg
---

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
