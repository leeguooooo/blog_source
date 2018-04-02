title: react native 原生环境踩坑
date: 2017-12-26 17:07:23
author: 郭立lee
category: react native
tags: [RN, native]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmua8azwdzj3096064jrh.jpg
---


<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->
## 目录
* [目录](#目录)
* [1. IOS 'MMMarkdown/MMMarkdown.h' file not found](#1-ios-mmmarkdownmmmarkdownh-file-not-found)
* [2. Unable to find a specification for SocketRocket](#2-unable-to-find-a-specification-for-socketrocket)
* [3. 'ProtocolBuffers/ProtocolBuffers.h' file not found](#3-protocolbuffersprotocolbuffersh-file-not-found)
* [4. Caused by: java.lang.InstantiationError: okhttp3.internal.ws.RealWebSocket](#4-caused-by-javalanginstantiationerror-okhttp3internalwsrealwebsocket)
	* [解决办法](#解决办法)
* [5. 华为手机无法允许usb调试](#5-华为手机无法允许usb调试)
	* [问题](#问题)
	* [处理方案](#处理方案)

<!-- /code_chunk_output -->


## 1. IOS 'MMMarkdown/MMMarkdown.h' file not found
---
> 苹果原生环境MMMarkdown找不到，需要安装carthage
```shell
brew install carthage
carthage update # 项目目录下执行
open Untitled.xcworkspace/
```


## 2. Unable to find a specification for SocketRocket
---
* `xcodeproj` was renamed to `project`. Please update your Podfile accordingly.


> 当在update或install时遇会到这个问题
> 只需要把当前Pod的目录清理一下就行了。在终端执行以下命令：

```shell
pod repo remove master  
pod setup
pod install
```


## 3. 'ProtocolBuffers/ProtocolBuffers.h' file not found
---
> 没有Pod进去的原因，改为

    #import "ProtocolBuffers.h"

## 4. Caused by: java.lang.InstantiationError: okhttp3.internal.ws.RealWebSocket
> 在安卓启动时候报错,导致启动时就直接崩溃

### 解决办法
删除 `compile 'com.squareup.okhttp3:okhttp-ws:3.4.2'`
升级到最新版

## 5. 华为手机无法允许usb调试

### 问题
> 有应用遮挡了权限请求界面，所有辅助功能设置都提示前面

### 处理方案
> 关掉护眼模式跟悬浮导航就可以

----
> 此文章只作为遇到问题的记录，如有相似问题请结合项目进行参考。
