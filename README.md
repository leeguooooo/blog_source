### YMFE 团队博客

* 地址: <https://blog.ymfe.org/>
* `mfe/ymfe-blog` 用于 YMFE团队 博客
* `mfe/ymfe` 项目用于 YMFE团队 首页

### 如何写博客

* 安装 Hexo: `npm install hexo -g`
* 工程：Clone 此项目并安装模块 `git clone git@gitlab.corp.qunar.com:mfe/ymfe-blog.git && cd ymfe-blog && npm install`
* 编写：在 `source/_posts/` 目录下编写博客，格式为 `markdown`
* 本地预览：可以用 `hexo serve` 启动本地服务，通过 `http://0.0.0.0:4000/ymfe/` 来访问博客
* 构建并发布： `git pull && sh build.sh && git add --all && git commit -m 'feat: publish blog'`

### 分享技巧

* 分享图片规则：分享图片默认为文章中 photos 标签的第一张图片，如果不存在则显示文章中首个 img 标签的图片。

### 注意

* 首页展示的图片宽高比为16:9
* 单张图片大小建议不超过100kb
* 图片链接协议应为 `https` ，推荐使用 chrome 的 [新浪微博图床插件](https://chrome.google.com/webstore/detail/%E6%96%B0%E6%B5%AA%E5%BE%AE%E5%8D%9A%E5%9B%BE%E5%BA%8A/fdfdnfpdplfbbnemmmoklbfjbhecpnhf) (上传图片时别忘记勾选https选项)

![新浪微博图床上传插件](https://ws1.sinaimg.cn/large/006cGJIjly1fkt4gmcdf6j30jz0bgadf.jpg)

就这样，大家愉快地写起了博客，最后不要忘了看，本项目的简介。
