title: hexo如何添加markdown目录
author: 郭立lee
copyright: true
date: 2018-03-20 19:27:09
category: hexo博客
tags: [markdown目录,生成目录]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fpjhxcpvlqj312c0mi4ea.jpg
---


<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [方案一](#方案一)
	* [新增构建脚本](#新增构建脚本)
	* [设置启动](#设置启动)
	* [完成](#完成)
* [方案二(目前在用,需要atom)](#方案二目前在用需要atom)
	* [安装](#安装)
	* [配置](#配置)
	* [完成](#完成-1)

<!-- /code_chunk_output -->


##方案一

### 新增构建脚本

**在根目录下创建`build.sh`**

```Shell
#!/bin/sh

modulePath="node_modules"

if [ ! -d "$modulePath" ]; then
    echo "Not found node_modules! && install"
    npm install --registry=http://registry.npm.corp.qunar.com/
fi

doctoc ./source/_posts
hexo clean
hexo g
hexo s
```

### 设置启动

**在`package.json`中添加以下内容**

```JavaScript
"scripts": {
  "postinstall": "node scripts/postinstall.js --verbose",
  "build": "sh build.sh",
  "dev": "hexo serve",
  "start": "sh build.sh",
  "up": "sh scp.sh"
}
```

### 完成
每次编辑完成后执行 `npm start` 就自动生成了带目录的文章了

## 方案二(目前在用,需要atom)

### 安装

在atom中安装`markdown-toc`

### 配置

打开 `scaffolds` `post.md` 文件 修改
```python
title: {{ title }}
date: {{ date }}
author: 郭立lee
category:
tags:
photos:
copyright: true
---

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->
##目录
* [目录](#目录)

<!-- /code_chunk_output -->

```

### 完成

每次编辑完成报错即可
