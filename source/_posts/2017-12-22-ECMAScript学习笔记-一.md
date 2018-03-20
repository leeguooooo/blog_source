title: ECMAScript学习笔记(一)
date: 2017-12-22 17:31:30
author: 李爽lisa
category: javascrip
tags: [es6]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fmpohcio7ej30i30aw746.jpg
---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**目录**

- [ECMAScript 学习笔记（一）](#ecmascript-%E5%AD%A6%E4%B9%A0%E7%AC%94%E8%AE%B0%E4%B8%80)
  - [函数调用中使用展开运算符](#%E5%87%BD%E6%95%B0%E8%B0%83%E7%94%A8%E4%B8%AD%E4%BD%BF%E7%94%A8%E5%B1%95%E5%BC%80%E8%BF%90%E7%AE%97%E7%AC%A6)
  - [用于解构赋值](#%E7%94%A8%E4%BA%8E%E8%A7%A3%E6%9E%84%E8%B5%8B%E5%80%BC)
  - [ES7对象展开运算符](#es7%E5%AF%B9%E8%B1%A1%E5%B1%95%E5%BC%80%E8%BF%90%E7%AE%97%E7%AC%A6)
  - [类数组对象变成数组(Array.from())](#%E7%B1%BB%E6%95%B0%E7%BB%84%E5%AF%B9%E8%B1%A1%E5%8F%98%E6%88%90%E6%95%B0%E7%BB%84arrayfrom)
  - [错误示范](#%E9%94%99%E8%AF%AF%E7%A4%BA%E8%8C%83)
  - [正确示范](#%E6%AD%A3%E7%A1%AE%E7%A4%BA%E8%8C%83)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## ECMAScript 学习笔记（一）
------
es6标准的制定为javascript添加了很多新特性,今天主要说一下展开运算符。
### 函数调用中使用展开运算符
es6之前：
```javascript
function test(a, b, c) { }
var args = [0, 1, 2];
test.apply(null, args);//数组展开成多个参数
```
es6之后，利用es6的展开运算符这一新特性，简化了代码书写:
```javascript
function test(a,b,c) { }
var args = [0,1,2];
test(...args);
```
### 用于解构赋值
```javascript
let [arg1,arg2,...arg3] = [1, 2, 3, 4];
arg1 //1
arg2 //2
arg3 //['3','4']

/* 注意： 解构赋值中展开运算符必须放在最后，不然会报错！！！*/
```
### ES7对象展开运算符
偶然发现对象还可以有这种操作，跟数组展开运算符大同小异，很方便啊~~
```javascript
//解构赋值
let {x,y,...z}={x:1,y:2,a:3,b:4};
x; //1
y; //2
z; //{a:3,b:4}

// 直接插值
let a={x:1};
let b={y:1,z:1,...a};

//对象合并
let a={x:1};
let b={y:1};
let c={...a,...b};
c; //{x:1,y:1}
```
### 类数组对象变成数组(Array.from())
一开始对类数组对象的认识比较模糊，特地了解了一下什么是类数组对象，对于类数组对象的解释和大家说一下：

关于类数组对象的介绍：**JavaScript中有一些看起来像却又不是数组的对象，叫做类数组。**
简单举个例子：
```javascript
let t={0:52,1:63,2:4,length:3};

```
我理解的简单一点，首先它必须是一个对象类型，其次对象内部的key表示的是当前的索引值，以及length 属性告诉我们对象的元素个数. 类数组对象自身**不具有push、forEach、indexOf等数组对象对应的方法**。

这里es6新特性对于类数组对象转化为数组，提供了更简便的方法。
es6之前：
```javascript
let t={0:52,1:63,2:4,length:3};
let arr=[].slice.call(t);
console.log(arr) // [52, 63, 4]
```
es6之后：
```javascript
let t={0:52,1:63,2:4,length:3};
let d=Array.from(t); // [52, 63, 4]

```
### 错误示范
```javascript
let t={0:52,1:63,2:4,length:3};
let arr=[...t];// 这种写法是错误的，类数组对象明确定义不能直接使用数组对象的方法。只有展开对象是可遍历的情况下可以这样写。
```
### 正确示范
```javascript
var tr={x:52,y:63,z:4};//展开对象可遍历
var arr=[...d];
arr；// [52, 63, 4]
```


本文只是对es6展开运算符做了简单介绍，如有写不对的地方，欢迎指正！

参考文章链接：[ECMAScript 6学习笔记（一）：展开运算符][1]

[1]: https://www.cnblogs.com/mingjiezhang/p/5903026.html
