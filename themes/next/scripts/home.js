// hexo.extend.generator.register('home', function(locals){
//   // home.swig里使用的 site.posts 就是这里的 locals.posts
//   // console.log(locals.posts);
//   return {
//     path: 'index.html',
//     data: locals,
//     layout: ['home']
//   }
// });

// hexo.extend.generator.register('blog', function(locals){
//   var myLocals = locals;
//   myLocals.posts.data = myLocals.posts.data.reverse();
//   return {
//     path: 'blog/index.html',
//     data: myLocals,
//     layout: ['index']
//   }
// });

// 输出 博客列表的 json
hexo.extend.generator.register('blogList', function(locals){
  var res = locals.posts.data.reverse().map(function(item, index) {
    return {
      title: item.title,
      path: 'https://blog.lee.org/' + item.path,
      img: item.photos[0]
    }
  });
  var cache = [];
  // 循环结构转换成json by 司徒: http://www.cnblogs.com/rubylouvre/p/6814431.html
  var resStr = JSON.stringify(res, function(key, value) {
      if (typeof value === 'object' && value !== null) {
          if (cache.indexOf(value) !== -1) {
              return;
          }
          cache.push(value);
      }
      return value;
  });
  cache = null;
  return {
    path: 'blog.json',
    data: 'blogList(' + resStr + ')'
  };
});
