title: hexo如何添加markdown目录
author: 郭立lee
copyright: true
date: 2018-03-20 19:27:09
category: hexo博客
tags: [markdown目录,生成目录]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fpjhxcpvlqj312c0mi4ea.jpg
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**目录**

- [新增构建脚本](#%E6%96%B0%E5%A2%9E%E6%9E%84%E5%BB%BA%E8%84%9A%E6%9C%AC)
- [设置npm start](#%E8%AE%BE%E7%BD%AEnpm-start)
- [END](#end)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## 新增构建脚本

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

## 设置npm start

**在`package.json`中添加以下内容**
```json
"scripts": {
  "postinstall": "node scripts/postinstall.js --verbose",
  "build": "sh build.sh",
  "dev": "hexo serve",
  "start": "sh build.sh",
  "up": "sh scp.sh"
},
```

## END

每次编辑完成后执行`npm start`就自动生成了带目录的文章了
