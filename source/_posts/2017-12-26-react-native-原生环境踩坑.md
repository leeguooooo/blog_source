title: react native 原生环境踩坑
date: 2017-12-26 17:07:23
author: 郭立lee
category: react native
tags: [RN, native]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmua8azwdzj3096064jrh.jpg
---

## IOS 'MMMarkdown/MMMarkdown.h' file not found
> 苹果原生环境MMMarkdown找不到，需要安装carthage
```shell
brew install carthage
carthage update # 项目目录下执行
open Untitled.xcworkspace/
```

----
> 此文章只作为遇到问题的记录，如有相似问题请结合项目进行参考。
