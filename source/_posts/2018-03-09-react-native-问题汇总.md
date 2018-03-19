title: react native 问题汇总
date: 2018-03-09 20:34:43
author: 郭立lee
category: react native
tags: [RN,react nateve,debug,debuggerWorker.js,404,bundle 100%,debugger]
photos: https://ws1.sinaimg.cn/large/005T0OjCly1fn2f2xxu5yj30a705tdgq.jpg
---

## ReferenceError: Can't find variable: event





----
## static getDerivedStateFromProps

> 作为被废弃的componentWillReceiveProps的替代，React提供了一个新的函数static getDerivedStateFromProps(nextProps, prevState)
>
> 注意前面的static，这意味着在这个函数中我们不能使用this, 该函数的返回值将用于更新state。如果不需要更新state，就返回null

```javascript
static getDerivedStateFromProps(nextProps, prevState) {
  if (nextProps.text === prevState.text) return null;
  return { text: nextProps.text }; // 相当于setState({ text: nextProps.text });
}
```

----

## 16.3 生命周期相关改动

为了支持未来的异步渲染特性，以下生命周期函数将被废弃

* componentWillMount 请使用 componentDidMount代替
* componentWillUpdate 请使用 componentDidUpdate代替
* componentWillReceiveProps 请使用新增的 static getDerivedStateFromProps代替
废弃警告会在React 16.4开启，废弃的函数预计在React 17.0移除

```javascript
// componentWillMount 请使用 componentDidMount代替 替换实例
componentWillUpdate(nextProps, nextState) {
  foo(nextProps, nextState);
  bar(this.props, this.state);
  nextProps.a === this.props.a;
}

componentDidUpdate(prevProps, prevState) {
  foo(this.props, this.state);
  bar(prevProps, prevState);
  this.props.a === prevProps.a;
}
```

详细介绍请见：[去哪儿.我爱你/React-16-3-新特性](https://xn--v4q63d8za.xn--6qq986b3xl/React-16-3-%E6%96%B0%E7%89%B9%E6%80%A7/)

----

## react native debug模式加载100%之后空白页

* "GET /debuggerWorker.js HTTP/1.1" 404 156 "http://localhost:8081/debugger-ui"
* Downloading JavaScript bundle 100%

1. ` "GET /debuggerWorker.js HTTP/1.1"`的问题是由于我chrome的问题无法自动打开`http://localhost:8081/debugger-ui`的页面导致的。
2. `Downloading JavaScript bundle 100%`加载之后一直空白页尝试了多次一直都这样。
最后我通过使用官方的`react native debugger`工具成功debug了
