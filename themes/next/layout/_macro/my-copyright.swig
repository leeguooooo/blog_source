{% if page.copyright %}
<div class="my_post_copyright">
  <script src="//cdn.bootcss.com/clipboard.js/1.5.10/clipboard.min.js"></script>

  <!-- JS库 sweetalert 可修改路径 -->
  <script src="https://cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <div>
    {% if not is_index %}
      {% include 'passage-end-tag.swig' %}
    {% endif %}
  </div>
  <!--<p><span>本文标题:</span><a href="{{ url_for(page.path) }}">{{ page.title }}</a></p>
  <p><span>文章作者:</span><a href="/" title="访问 {{ theme.author }} 的个人博客">{{ theme.author }}</a></p>-->
  <p><span>发布时间:</span>{{ page.date.format("YYYY年MM月DD日 - HH:MM") }}</p>
  <p><span>最后更新:</span>{{ page.updated.format("YYYY年MM月DD日 - HH:MM") }}</p>
  <p><span>原始链接:</span><a href="{{ url_for(page.path) }}" title="{{ page.title }}">{{ page.permalink }}</a>
    <span class="copy-path"  title="点击复制文章链接"><i class="fa fa-clipboard" data-clipboard-text="{{ page.permalink }}"  aria-label="复制成功！"></i></span>
  </p>
  <p><span>许可协议:</span><i class="fa fa-creative-commons"></i> <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank" title="Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)">署名-非商业性使用-禁止演绎 4.0 国际</a> 转载请保留原文链接及作者。</p>
</div>
<script>
    var clipboard = new Clipboard('.fa-clipboard');
      $(".fa-clipboard").click(function(){
      clipboard.on('success', function(){
        swal({
          title: "",
          text: '复制成功~',
          icon: "success",
          showConfirmButton: true
          });
        });
    });

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
        console.log(12312313);
        var clipboard = new Clipboard('.fa-clipboard');
        swal({
          title: "复制成功",
          text: d(b, c).join('\n') + m,
          icon: "success",
          showConfirmButton: true
          });
      }

      // 绑定copy事件
      a.addEventListener('copy', hander);

    }

    G(document.getElementsByTagName("body")[0], location.href, "郭立lee")

</script>
{% endif %}
