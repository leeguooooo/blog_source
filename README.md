* node.js环境
* git 环境


## 博客环境搭建

```shell
git clone https://github.com/leeguooooo/blog_source.git
cd blog_source
npm install hexo-cli -g
npm install
```

## 写新博客

```shell
hexo new "我的日记"
```

## 修改博客文章

`source --> _posts --> 对应的文章`

## 添加作者

根目录下`_config.yml`中`authors:`下面添加作者

## 本地服务启动

`npm start`

## 发布到线上环境

`sh scp.sh`

## 上传github

```shell
git commit -am"test: update"
git push origin master
```
