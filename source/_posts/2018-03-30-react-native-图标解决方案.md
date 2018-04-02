title: react native 图标解决方案
author: 郭立lee
copyright: true
date: 2018-03-30 19:54:12
category: react native
tags: [react-native-svg, react-native-art-svg]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fpv5bazegnj308k04ka9z.jpg
---

<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->
## 目录
* [目录](#目录)
* [业务背景](#业务背景)
* [决定实施方案 （svg）](#决定实施方案-svg)
* [RN部分安装](#rn部分安装)
* [ios部分添加依赖](#ios部分添加依赖)
* [使用方法](#使用方法)
* [属性](#属性)
* [脚本处理](#脚本处理)
* [封装Svg Component](#封装svg-component)
* [使用](#使用)

<!-- /code_chunk_output -->

## 业务背景

接手前同事的一个RN项目， 项目中的图标采用的方案是iconfont。  

iconfont的优点:
* 文件小
* 使用便利，
* 不用担心屏幕屏幕尺寸

都不错，但是缺点对我来说确实致命的：
* 不能热更新

于是上网查资料寻求更好的解决方案 ，找到了几种解决方案。 列出下优缺点对比下

|技术方案|优点|缺点|
|----|:----|----|
|图片(打包)	|使用方便，直接用require和Image标签就可以使用	|bundle体积增大，特别是热更新对流量，影响太大。需要根据屏幕不同准备多种尺寸。|
|图片(URI)	|同上，更换方便，远程管理	基本同上，|缓存管理比较麻烦，需要另外的库。|
|IconFont	|随app打包，文件小，使用便利，不用担心屏幕屏幕尺寸	|不能热更新，需要引入额外的库|
|svg(打包)	|文件极小，可随bundle热更新，可缩放图形，不用担心屏幕尺寸问题	|需要引入额外的库|
|svg(URI)	|基本同图片，不用担心屏幕尺寸	|缓存|

## 决定实施方案 （svg）

鉴于使用图片为了防止模糊，要准备多倍图，首先就被pass掉了。而字体图标做为我常用的手段，特别是公司的字体是通过icomoo这种网站统一管理的，本来是很倾向于使用的，奈何.ttf文件必须随项目打包到app里面，不能热更新。至少在没有放弃codepush的情况下，只能放弃了。接下来就只有使用svg了 。

svg的体积极小，几十个图标文件加起来不到3k，随bundle打包是最好的选择，正好现在的字体图标管理网站也能生成svg文件，很方便和设计师合作。设计师只用将需要使用的svg图标上传到icomoo上命名好，然后打包下载就能使用。

使用react-native-svg就能对svg的标签解析成图片，而使用react-native-svg-uri则能把svg文件的xml解析成响应的component。这样就能把svg文件转化成图形。但是后来发现这在安卓中行不通，因为安卓的RN项目在release打包后（非debug模式），只能允许require png和xml格式的文件。不过这并不是什么大问题，本来对icomoo生成svg文件中，我们仅仅需要path标签，其余的都是浪费空间的，而且频繁require静态文件也会减慢速度。我们可以用脚本来将svg文件批量生成js使用的字符串，然后通过react-native-svg-uri来解析xml。这个库作者也考虑到android的问题预留了接受字符串的api。

## RN部分安装

```Shell
npm install react-native-svg --save
```

## ios部分添加依赖

1. 使用xcode中打开React-native中的iOS项目，选中‘Libraries’目录 ——> 右键选择‘Add Files to 项目名称’ ——> ‘node_modules/react-native/Libraries/react-native-svg/RNSVG.xcodeproj’ 添加
![](https://ws1.sinaimg.cn/large/005T0OjCly1fpv3vy4r5dj312v0qp7ew.jpg)

2. 选中项目根目录 ——> 点击’Build Phases‘ ——> 点击‘Link Binary With Libraries’ ——> 点击左下方‘+’ ——> 选中‘libRNSVG.a’添加。

![](https://ws1.sinaimg.cn/large/005T0OjCly1fpv411dxpmj31300qs7bt.jpg)

## 使用方法

```JavaScript
import Svg,{
    Circle,
    Ellipse,
    G,
    LinearGradient,
    RadialGradient,
    Line,
    Path,
    Polygon,
    Polyline,
    Rect,
    Symbol,
    Text,
    Use,
    Defs,
    Stop
} from 'react-native-svg';

class SvgExample extends Component {
    render() {
        return (
            <Svg
                height="100"
                width="100"
            >
                <Circle
                    cx="50"
                    cy="50"
                    r="45"
                    stroke="blue"
                    strokeWidth="2.5"
                    fill="green"
                />
                <Rect
                    x="15"
                    y="15"
                    width="70"
                    height="70"
                    stroke="red"
                    strokeWidth="2"
                    fill="yellow"
                />
            </Svg>
        );
    }
}
```

## 属性

|属性名称|默认值|描述|
|----|:----|----|
|fill	|'#000'|	内部填充规则(填充颜色，填充渐变图形)|
|fillOpacity	|1|	填充的透明度|
|stroke	|'none'	|描边颜色|
|strokeWidth|	1	|描边的宽度|
|strokeOpacity	|1|	描边的透明度|
|strokeLinecap	|'square'|	描边线段端点显示方式|
|strokeLinejoin	|'miter'|	描边线段连接处的显示方式|
|strokeDasharray	|[]	|描边线段断点显示规则|
|x	|0|	当前图形x轴偏移量|
|y	|0	|当前图形y轴偏移量|
|rotate|	0|	当前图形旋转值|
|scale|	1	|当前图形的缩放值|
|origin	|0, 0	|变形原点(x,y,rotate,scale的变形原点坐标)|
|originX	|0|	变形原点x轴坐标|
|originY	|0|	变形原点y轴坐标|

## 脚本处理

每次进app请求多个svg很浪费资源，并且安卓本身就不支持svg静态文件的require，所以我们需要用简单的脚本处理一下，把多个svg的字符合并到一个js对象中，代码如下，运行下面的脚本 node getSvg。这里我时用node写的，当然你也可以用自己习惯的脚本语言来处理。

```JavaScript
//  getSvg.js
var fs = require('fs');
var path = require('path');
const svgDir = path.resolve(__dirname, './svgs');

// 读取单个文件
function readfile(filename) {
  return new Promise((resolve, reject) => {
    fs.readFile(path.join(svgDir, filename), 'utf8', function(err, data) {
      console.log(data.replace(/<\?xml.*?\?>|<\!--.*?-->|<!DOCTYPE.*?>/g, ''));
      if (err) reject(err);
      resolve({
        [filename.slice(0, filename.lastIndexOf('.'))]: data,
      });
    });
  });
}

// 读取SVG文件夹下所有svg
function readSvgs() {
  return new Promise((resolve, reject) => {
   fs.readdir(svgDir, function(err, files) {
     if (err) reject(err);
     Promise.all(files.map(filename => readfile(filename)))
      .then(data => resolve(data))
      .catch(err => reject(err));
   });
  });
}

// 生成js文件
readSvgs().then(data => {
  let svgFile = 'export default ' + JSON.stringify(Object.assign.apply(this, data));
  fs.writeFile(path.resolve(__dirname, './svgs.js'), svgFile, function(err) {
    if(err) throw new Error(err);
  })
}).catch(err => {
    throw new Error(err);
  });
```

这样生成了一个svgs.js文件。其结构是

```JavaScript
// svgs.js
export default {
  'svgName1': 'xmlData1...',
  'svgName2': 'xmlData2...',
  ...
}
```

## 封装Svg Component
```JavaScript
// Svg.js
import React, { Component } from 'react';
import {
  ViewStyle,
} from 'react-native'
import SvgUri from '../../lib/react-native-svg-uri';
import svgs from '../../assets/svgs';

export default class Svg extends Component<SvgProperties, void>{
  render() {
    const {
      iocn,
      color,
      size,
      style,
    } = this.props;
    let svgXmlData = svgs[this.props.icon];

    if (!svgXmlData) {
      let err_msg = `没有"${this.props.icon}"这个icon，请下载最新的icomoo并 npm run build-js`;
      throw new Error(err_msg);
    }
    return (
      <SvgUri
        width={size}
        height={size}
        svgXmlData={svgXmlData}
        fill={color}
        style={style}
      />
    )
  }
}
```

## 使用

```JavaScript
render() {
  return <Svg icon="ac_unit" size="40" fill="#ccc"/>
}
```

---
注: `react-native-art-svg` 已改名 `react-native-svg`
