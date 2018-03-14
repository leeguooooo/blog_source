var G = function(a, b, c){

  // 拼接字符串
  function d(a, b) {
    return ['著作权归作者所有。',
      '商业转载请联系作者获得授权，非商业转载请注明出处。',
      '作者：' + b,
      '链接：' + a,
      '来源：leeguoo.com',
      '',
      ''
    ]
  }

  // 拼接成html
  function f(b, c, m) {
    return '<div>' + d(b, c).join('<br />') + m +'</div>'
  }

  // 处理 copy
  function g(a){
    if(!window.getSelection){
      return;
    }


    var m = window.getSelection().toString();

    if ('object' === typeof a.clipboardData) {
      var m = window.getSelection().toString();
      a.clipboardData.setData('text/html', f( b, c));
      a.clipboardData.setData('text/plain', d(b, c).join('\n') + m);
      a.preventDefault();

      return;
    }

    var n = $(f(b, c, m)).css({
      position: 'fixed',
      left: '-9999px'
    }).appendTo('body');
    window.getSelection().selectAllChildren(n[0]);

  }

  function hander(a){
    // g(a);
    var m = window.getSelection().toString();
    alert(d(b, c).join('\n') + m);
  }

  // 绑定copy事件
  a.addEventListener('copy', hander);

}

G(document.getElementsByTagName("body")[0], location.href, "郭立lee")



