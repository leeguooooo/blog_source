title: react native 问题汇总
date: 2018-03-09 20:34:43
author: 郭立lee
category: react native
tags: [RN]
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
----
