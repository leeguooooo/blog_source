title: react native样式整理
date: 2017-12-22 16:15:43
author: 郭立lee
category: react native
tags: [RN, 样式]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmpmj62aucj30co07s0sn.jpg
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**目录**

- [react native 样式表整理](#react-native-%E6%A0%B7%E5%BC%8F%E8%A1%A8%E6%95%B4%E7%90%86)
  - [Flexbox布局样式](#flexbox%E5%B8%83%E5%B1%80%E6%A0%B7%E5%BC%8F)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# react native 样式表整理

------

整理下rn的常用样式，供新手参考：

## Flexbox布局样式


| 样式<br>名称        | k   |  v  |解释|
| --------   | -----:  | :----:  |----|
| 项目<br>对齐 |    alignItems   | flex-start<br>flex-end<br>center<br>stretch ||
|自身<br>对齐|alignSelf |  flex-start<br>flex-end<br>center<br>auto<br>stretch |flex-start：与父容器首部对齐<br><br>flex-end:与父容器尾部对齐<br><br> center：位于垂直位置<br><br>auto：按照自身设置的宽高来显示，如果没设置，效果跟streth一样<br><br>stretch：垂直拉伸|
|该属性通过定义flex容器的<br>主轴方向来决定felx子项<br>在flex容器中的位置。<br>这将决定flex需要如何进行排列|flexDirection|row<br>row-reverse<br>column<br>column-reverse|row：主轴与行内轴方向作为默认的书写模式。即横向从左到右排列（左对齐）。<br><br>row-reverse：对齐方式与row相反<br><br>column：主轴与块轴方向作为默认的书写模式。即纵向从上往下排列（顶对齐）<br><br>column-reverse：对齐方式与column相反。
