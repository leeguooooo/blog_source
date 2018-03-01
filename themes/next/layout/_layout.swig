<!doctype html>
<html class="theme-next {% if theme.use_motion %}use-motion{% endif %} {% if theme.scheme %}theme-next-{{ theme.scheme | lower }}{% endif %}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ config.language }}">

  {% include '_partials/old-browsers.swig' %}
  {% include '_scripts/analytics.swig' %}

  <div class="container one-column {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      {% if page.comments %}
      <div class="js-reading-position"></div>
      {% endif %}
      <div class="main-inner">
        <div id="content" class="content"> {% block content %}{% endblock %} </div>

        {% if (theme.duoshuo_hotartical and page.title) %}
            <!-- 多说热评文章-->
            <p>热评文章</p>
            <div class="ds-top-threads" data-range="weekly" data-num-items="4"></div>
        {% endif %}

        {% if page.comments %}
          <div class="comments" id="comments">
            {% if (theme.duoshuo and theme.duoshuo.shortname) or theme.duoshuo_shortname %}
              <div class="ds-thread" data-thread-key="{{ page.path }}"
                   data-title="{{ page.title }}" data-url="{{ page.permalink }}">
              </div>
            {% elseif theme.disqus_shortname %}
              <div id="disqus_thread">
                <noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
              </div>
            {% endif %}
          </div>
        {% endif %}
      </div>

      {% block sidebar %}{% endblock %}
    </main>
{# 广告 #}
<div id="qn-banner-cont">
	<div class="qn-banner-dis">
	</div>
	<div id="qnrg" class="qn-banner">

		<div id="qn-banner-tic">
			<i id="closeQunar" class="close qn-banner-close" onclick="document.getElementsByClassName('qn-banner')[0].style.display='none'"></i>
            <div class="section-qunar">
                <img class="logo" src="//s.qunarzz.com/train_search/images/yindaoQunar.png">
                <div class="main">
                    <div class="t1">去哪儿旅行</div>
                    <div class="t2">
                        <span class="highlight">火车票、机票、</span>你想要的都在这里！
                    </div>
                    <div class="op">
                        <a class="js-download-click" clickkey="js_qunarapp_click_iphone" href="//touch.qunar.com/downloadUrlJump.jsp?type=iphone&amp;from=fuceng" target="_blank">
                            <i class="icon qunar_iph"></i>iPhone</a>
                        <a class="js-download-click" clickkey="js_qunarapp_click_android" href="//touch.qunar.com/h5/downloadAndroid?bd_source=fuceng" target="_blank">
                            <i class="icon qunar_andr"></i>Android</a>
                    </div>
                </div>
                <img src="//s.qunarzz.com/train_search/images/routine_code_banner_0516.png" class="routine_code">
            </div>
		</div>
	</div>
</div>
<script>
function getContentSize() {
    var wh = document.documentElement.clientWidth;
    var eh = document.getElementById('sidebar').style.width.replace('px','');
    ch = (wh - eh) >= 1150 ? ch = (wh - eh) + "px" : "0px";
    document.getElementById("qnrg").style.width = ch;
}
    window.onload = window.setTimeout(getContentSize,1300);
    window.setTimeout(function(){document.getElementsByClassName('qn-banner')[0].style.display='none';},5000);;
    window.onresize = getContentSize;
</script>
    {# <a href="https://dujia.qunar.com/2018cj?tf=xbtj05&in_track=xbtj05" target="_blank"><img src="https://img1.qunarzz.com/vc/d6/ba/05/83a12d471cbc02a2f1e42c2d04.jpg" border="0"</a> #}
    <footer id="footer" class="footer">
      <div class="footer-inner"> {% include '_partials/footer.swig' %} </div>
    </footer>

    <div class="back-to-top"></div>
  </div>
  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/jquery/index.js?v=2.1.3"></script>

  {# This block is used to set options before any other scripts run #}
  {% block script_extra_before %}{% endblock %}
  {% block comment_system %}
    {% include '_scripts/comments/duoshuo.swig' %}
    {% include '_scripts/comments/disqus.swig' %}
  {% endblock %}
  {% include '_scripts/fancy-box.swig' %}
  {% include '_scripts/helpers.swig' %}
  {% include '_scripts/motion.swig' %}

  <script type="text/javascript" src="{{ url_for(theme.js) }}/nav-toggle.js?v={{ theme.version }}"></script>
  <script type="text/javascript" src="{{ url_for(theme.js) }}/headBand.min.js"></script>
  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/fastclick/lib/fastclick.min.js?v=1.0.6"></script>

  {% block script_extra %}{% endblock %}

  <script type="text/javascript">
    $(document).ready(function () {
      if (CONFIG.sidebar === 'always') {
        displaySidebar();
      }
      if (isMobile()) {
        FastClick.attach(document.body);
      }
    });
  </script>

  {% include '_scripts/mathjax.swig' %}
  {% block comment_system %}{% endblock %}
  {% include '_scripts/baidushare.swig' %}

  {# LazyLoad #}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/lazyload.js"></script>
  <script type="text/javascript">
    $(function () {
      $("#posts").find('img').lazyload({
        placeholder: "{{ url_for(theme.images) }}/loading.gif",
        effect: "fadeIn"
      });
    });

  </script>
  <script type="text/javascript" src="//cdn.bootcss.com/raphael/2.2.1/raphael.min.js"></script>
  <script type="text/javascript" src="//cdn.bootcss.com/flowchart/1.6.3/flowchart.min.js"></script>
  <script type="text/javascript">
      var requireId = 0;
      $(function() {
          $('.highlight.flow').each(function(index, item) {
              var code = $(item).find('.code pre').text(),
                  id = 'flow-' + requireId++;
              $(item).attr('id', id);
              $(item).attr('data-code', code);
              $(item).html('');
              var diagram = flowchart.parse(code);
              diagram.drawSVG(id);
          });
      });
  </script>
  <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
  <script>
  $(function(){
    // 封装分享
    function commonShare() {
      var title = document.title,
          link = location.href,
          desc = $('.post-body p')[0].innerHTML,
          imgSrc = $('#js-share-img').data('src') || $($('img')[0]).attr('src');
      var commonConfig = {
        title: title,
        desc: desc,
        link: link,
        imgUrl: imgSrc,
      };
      wx.onMenuShareTimeline({
        title: title,
        link: link,
        imgUrl: imgSrc
      });
      wx.onMenuShareAppMessage(commonConfig);
      wx.onMenuShareQQ(commonConfig);
      wx.onMenuShareWeibo(commonConfig);
      wx.onMenuShareQZone(commonConfig);
    }

    // 请求: 微信分享
    $.ajax({
      type: "GET",
      url: 'https://ued.qunar.com/ticket/wx',
      data: {
        url: window.location.href.split('#')[0],
        jsApiList: [
          'onMenuShareTimeline',
          'onMenuShareAppMessage',
          'onMenuShareQQ',
          'onMenuShareWeibo',
          'onMenuShareQZone'
        ]
      },
      dataType: "jsonp",
      jsonp: "sign",
      success: function(res) {
        wx.config({
          debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
          appId: 'wx93dbe152c661b3bd', // 必填，公众号的唯一标识
          timestamp: res.timestamp, // 必填，生成签名的时间戳
          nonceStr: res.nonceStr, // 必填，生成签名的随机串
          signature: res.signature,// 必填，签名，见附录1
          jsApiList: [
            'onMenuShareTimeline',
            'onMenuShareAppMessage',
            'onMenuShareQQ',
            'onMenuShareWeibo',
            'onMenuShareQZone'
          ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
        });

        wx.ready(function(res) {
          commonShare();
        })
        wx.error(function(res){
          console.log(res);
        });
      },
      error: function(err) {
        console.log(err);
      }
    })
  });
  $('.js-reading-position').headBand({
		'background':'#ff561b',
		'height':"3"
	});
  </script>

  {% if theme.leancloud_visitors.enable %}
    {% include '_scripts/lean-analytics.swig' %}
  {%  endif %}
</body>
</html>
<!-- 页面点击小红心 -->
<script type="text/javascript" src="/js/love.js"></script>
