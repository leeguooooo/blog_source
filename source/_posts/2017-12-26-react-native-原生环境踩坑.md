title: react native 原生环境踩坑
date: 2017-12-26 17:07:23
author: 郭立lee
category: react native
tags: [RN, native]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmua8azwdzj3096064jrh.jpg
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**目录**

- [IOS 'MMMarkdown/MMMarkdown.h' file not found](#ios-mmmarkdownmmmarkdownh-file-not-found)
- [Unable to find a specification for `SocketRocket`](#unable-to-find-a-specification-for-socketrocket)
- ['ProtocolBuffers/ProtocolBuffers.h' file not found](#protocolbuffersprotocolbuffersh-file-not-found)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## IOS 'MMMarkdown/MMMarkdown.h' file not found
> 苹果原生环境MMMarkdown找不到，需要安装carthage
```shell
brew install carthage
carthage update # 项目目录下执行
open Untitled.xcworkspace/
```


## Unable to find a specification for `SocketRocket`

* `xcodeproj` was renamed to `project`. Please update your Podfile accordingly.


> 当在update或install时遇会到这个问题
> 只需要把当前Pod的目录清理一下就行了。在终端执行以下命令：

```shell
pod repo remove master  
pod setup
pod install
```


## 'ProtocolBuffers/ProtocolBuffers.h' file not found

> 没有Pod进去的原因，改为

    #import "ProtocolBuffers.h"


----
> 此文章只作为遇到问题的记录，如有相似问题请结合项目进行参考。
