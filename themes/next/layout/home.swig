<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="baidu-site-verification" content="v3WPgfCRrA" />
    <title>郭立个人博客</title>
    <link rel="apple-touch-icon" href="icon.png" />
    <link rel="apple-touch-icon-precomposed" href="icon.png" />
    <link rel="stylesheet" type="text/css" href="{{ url_for(theme.css) }}/home.css?v={{ theme.version }}"/>
    <script type="text/javascript" src="/vendors/jquery/index.js?v=2.1.3"></script>
    <script type="text/javascript" src="/js/search-data.js"></script>
  </head>
  <body class="loading default">

    <!-- loading -->
    <!-- 加载页 -->
    <div class="loading-page">
      <div class="loading-icon">
        <div class="loading-progressbar js-loading-progressbar"></div>
        <div class="loading-logo">
          {% include '_partials/icons/lee-logo.svg' %}
        </div>
        <p class="loading-text js-loading-text"></p>
      </div>
    </div>


    <div class="page js-page navpage-show">

      <!-- aside -->
      <!-- 侧边栏 -->
      <aside class="aside">
        <div class="nav-icon js-nav-icon  x">
          <div class="nav-icon-line top"></div>
          <div class="nav-icon-line middle"></div>
          <div class="nav-icon-line bottom"></div>
        </div>
      </aside>

      <!-- header -->
      <!-- 头部 -->
      <header class="header js-header">
        <div class="header-inner">
          <div class="header-main">
            <nav class="header-nav">
              <div class="header-logo">lee</div>
              <ul class="header-nav-col">
                <li><a class="link" href="http://ued.qunar.com/">项目</a></li>
                <li><a class="link" href="./blog/">博客</a></li>
                <li><a class="link conf" href="https://ued.qunar.com/lee-conf/lee201710">lee CONF
                  <?xml version="1.0" encoding="UTF-8"?>
                  <svg class="conf-fire" width="16px" height="20px" viewBox="0 0 820 1000" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                      <!-- Generator: Sketch 45.2 (43514) - http://www.bohemiancoding.com/sketch -->
                      <title>Shape</title>
                      <desc>Created with Sketch.</desc>
                      <defs>
                          <linearGradient x1="50%" y1="0%" x2="50%" y2="100%" id="linearGradient-1">
                              <stop stop-color="#FAC200" offset="0%"></stop>
                              <stop stop-color="#FF561B" offset="100%"></stop>
                          </linearGradient>
                      </defs>
                      <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                          <g id="火" fill-rule="nonzero" fill="url(#linearGradient-1)">
                              <path d="M819.318,540.389 C688.394,668.082 676.961,674.483 620.726,640.618 C638.249,635.647 654.653,631.421 662.545,617.503 C749.165,560.834 815.093,488.319 819.195,353.106 C774.644,395.36 749.54,442.771 681.871,447.805 C739.908,371.437 757.307,278.48 768.802,182.415 C767.995,124.564 773.028,67.833 759.979,0.351 C738.665,42.792 729.719,87.096 700.887,117.604 C693.803,130.342 686.967,143.825 678.952,155.818 C617.622,246.042 522.675,297.555 425.43,346.332 C374.726,361.555 324.208,377.401 272.695,391.63 C265.176,393.804 254.614,403.064 244.361,387.28 C248.052099,373.916181 250.388,374.17 252.501,366.836 C270.024,315.138 322.903,300.846 360.931,271.393 C385.351,255.735 417.6,249.148 432.823,222.18 C395.789,223.546 363.681,227.406 331.601,240.443 C244.387,266.673 153.860728,332.129612 111.285407,370.443346 C68.7100851,408.75708 1.959,517.647 1.586,628.44 C0.779,686.351 -4.627,743.396 28.927,809.138 C41.293,682.812 92.184,589.419 208.878,541.201 C193.22,576.868 163.89,596.753 176.442,652.49 C206.33,590.974 240.32,546.297 292.142,517.9 C315.133,546.857 275.364,549.714 288.103,580.598 C357.138,533.56 426.981,489.939 508.32,464.524 C512.42,469.557 516.77,474.155 521.058,479.189 C418.096,559.968 331.91,651.932 351.173,829.833 C398.584,795.595 422.321,755.702 438.166,709.41 C456.435,721.404 448.917,734.017 453.949,745.823 C441.211,822.377 418.904,891.474 359.81,936.587 C325.51,963.057 279.031,968.96 242.183,991.828 C390.693,1017.678 504.839,977.287 604.695,907.382 C670.189,868.732 716.419,810.945 753.577,746.134 C787.69,686.786 815.031,622.972 819.318,540.389 Z" id="Shape"></path>
                          </g>
                      </g>
                  </svg>
                </a></li>
                <li><a class="link" href="https://github.com/lee">Github</a></li>
                <li><a class="link" href="./about/">关于</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </header>

      <!-- cover -->
      <!-- 封面 -->
      <section class="cover">
        <img class="cover-img js-cover-img" src="https://ws1.sinaimg.cn/large/006cGJIjly1fj1zt2bldnj31hc0nswzj.jpg" alt="xx">
        <div  class="cover-fullname-logo js-cover-intro">
          <p class="fullname-logo">WE ARE <em>lee</em></p>
          <p class="fullname-desc">去哪儿网移动架构组（lee）是由FE，iOS和Android工程师共同组成的，去哪儿最具想象力、创造力和影响力的大前端团队。</p>
        </div>
      </section>

      <div class="main">

          <!-- projects -->
          <!-- 项目介绍 -->
          <div class="row">
            <section class="content-section project-intro">
              <div>
                <h1 class="content-title">High-Quality Projects</h1>
                <p class="content-intro">我们奉行工程师文化，用软件创造世界，改造世界<br/>经历无数业务锤炼后，优质项目将开源分享</p>
              </div>
              <ul class="content-list">
                <li class="content-item">
                  <article class="project-main">
                    <div class="project-cover" onclick="window.open('http://ued.qunar.com/hy2/yo/', '_blank')">
                      <h4 class="project-title">Yo</h4>
                    </div>
                    <div class="project-intro">
                      <h4 class="project-name"><a class="project-link" href="http://ued.qunar.com/hy2/yo/">高度定制化的UI框架</a></h4>
                      <p class="project-desc">Yo 是一个专注于移动开发的 Front-end UI Framework，她轻量，易用，可配置，并且具备超强的扩展能力。</p>
                    </div>
                  </article>
                </li>
                <li class="content-item">
                  <article class="project-main">
                    <div class="project-cover" onclick="window.open('http://ued.qunar.com/hy2/', '_blank')">
                      <h4 class="project-title">HY2</h4>
                    </div>
                    <div class="project-intro">
                      <h4 class="project-name"><a class="project-link" href="http://ued.qunar.com/hy2/">跨平台移动开发Hybrid解决方案</a></h4>
                      <p class="project-desc">跨平台移动开发Hybrid解决方案，旨在让开发者使用前端技术开发跨平台的移动应用程序。</p>
                    </div>
                  </article>
                </li>
                <li class="content-item">
                  <article class="project-main">
                    <div class="project-cover" onclick="window.open('http://ykit.lee.org/', '_blank')">
                      <h4 class="project-title">YKit</h4>
                    </div>
                    <div class="project-intro">
                      <h4 class="project-name"><a class="project-link" href="http://ykit.lee.org/">前端统一构建解决方案</a></h4>
                      <p class="project-desc">基于 Webpack 的灵活快速的打包工具，帮助稳定高效构建现代 JavaScript 应用。</p>
                    </div>
                  </article>
                </li>
                <li class="content-item">
                  <article class="project-main">
                    <div class="project-cover" onclick="window.open('http://yicon.lee.org/', '_blank')">
                      <h4 class="project-title">QRN</h4>
                    </div>
                    <div class="project-intro">
                      <h4 class="project-name"><a class="project-link" href="http://yicon.lee.org/">快速高效的RN方案</a></h4>
                      <p class="project-desc">去哪儿增强版 React Native 解决方案，简称 QRN，秉承更快、更好、更统一的初心~</p>
                    </div>
                  </article>
                </li>
              </ul>
              <footer>
                <button class="ui-btn" onclick="window.open('http://ued.qunar.com/', '_self')">查看更多</button>
              </footer>
            </section>
          </div>

          <!-- articles -->
          <!-- 最新博客 -->
          <div class="row row-blog">
            <section class="content-section articles">
              <header>
                <h1 class="content-title">Latest Articles</h1>
                <p class="content-intro">深厚的技术底蕴，源于点滴积累<br />我们乐于编写博客、经常举办技术分享</p>
              </header>
              <ul class="content-blog">
                {% for article in site.posts %}
                  {% if loop.index <= 6 %}
                  <li class="blog-item" onclick="window.open('../{{ article.path }}', '_self')">
                    <article class="m-article">
                      <img src="{{ article.photos[0] }}" class="m-article-img" alt="">
                      <h1 class="m-article-title">{{ article.title }}</h1>
                    </article>
                  </li>
                  {% endif %}
                {% endfor %}
              </ul>
              <footer>
                <button class="ui-btn" onclick="window.open('./blog/', '_self')">查看更多</button>
              </footer>
            </section>
          </div>

          <div class="row row-footer">
            <footer class="content-section m-footer">
              <span itemprop="copyrightYear">&copy;</span>&nbsp;<span itemprop="copyrightYear">2017</span>
              <span class="with-love">
                <i class="icon-next-heart"></i>
              </span>
              <span class="author" itemprop="copyrightHolder">lee</span>
              京ICP备17044220号
            </footer>
          </div>
      </div>

      <!-- navpage -->
      <!-- 导航页 -->

      <div class="navpage">
        <div class="navpage-viewport">
          <div class="navpage-main content js-navpage-main">
            <nav class="navpage-nav js-navpage-nav">
              <ul>
                <li><a data-key="0" href="http://ued.qunar.com/">项目</a></li>
                <li><a data-key="1" href="./blog/">博客</a></li>
                <li><a data-key="2" href="https://github.com/lee">Github</a></li>
                <li><a data-key="3" href="./about/">关于</a></li>
              </ul>
            </nav>
            <div class="navpage-search js-navpage-search">
              <div class="fullname-logo">
                <p>Yummy Mobile<br />Front-end Team</p>
              </div>
              <div class="navpage-search-wrapper">
                {% include '_partials/search/lee-search.swig' %}
              </div>
            </div>
          </div>
        </div>
        <div class="navpage-backgrounds js-navpage-backgrounds">
          <div class="navpage-background projects"></div>
          <div class="navpage-background articles"></div>
          <div class="navpage-background github"></div>
          <div class="navpage-background about"></div>
        </div>
      </div>

    </div>
    <script>
      // 去抖函数
      window.debounce = function(fn, threshhold, scope) {
        threshhold || (threshhold = 250);
        var last,
            deferTimer;
        return function () {
          var context = scope || this;

          var now =+ new Date,
              args = arguments;
          if (last && now < last + threshhold) {
            // hold on to it
            clearTimeout(deferTimer);
            deferTimer = setTimeout(function () {
              last = now;
              fn.apply(context, args);
            }, threshhold);
          } else {
            last = now;
            fn.apply(context, args);
          }
        };
      };
    </script>
    <script>
      $(function() {
        var dWindow = $(window);
        var dCoverImg = $('.js-cover-img');
        var dCoverIntro = $('.js-cover-intro');
        var dPage = $('.js-page');
        var dNavIcon = $('.js-nav-icon');
        var dNavpageNav = $('.js-navpage-nav');
        var dNavpageBackgrounds = $('.js-navpage-backgrounds');
        var dLoadingProgressbar = $('.js-loading-progressbar');
        var dLoadingText = $('.js-loading-text');
        var windowWidth = dWindow.width();
        var $header = $('.js-header');

        if (document.body.scrollTop <= 0) {
          $header.removeClass('header-not-top').addClass('header-top');
        } else {
          $header.removeClass('header-top').addClass('header-not-top');
        }
        // body 滚动
        var freeze = function(e) {
          e.preventDefault();
        };
        function stopBodyScrolling (bool) {
          if (bool === true) {
            console.log('stop')
              document.body.addEventListener("touchmove", freeze, {passive: false});
          } else {
              document.body.removeEventListener("touchmove", freeze, {passive: false});
          }
        }
        // 图片加载
        stopBodyScrolling(true); // 当加载页显示时禁止触摸事件。
        setLoadingText('loading resources...');
        function setLoadingPercent(percent) {
          dLoadingProgressbar.css('width', percent);
        }
        function setLoadingText(text) {
          dLoadingText.html(text);
        }
        var timeout = setTimeout(function() {
          setLoadingPercent('40%');
        }, 1000);
        function onCoverLoad() {
          clearTimeout(timeout);
          setLoadingPercent('90%');
          setLoadingText('about to show');
          setTimeout(function() {
            setLoadingPercent('100%');
            $(document.body).removeClass('loading');
            stopBodyScrolling(false);
            setTimeout(function() {
              clearTimeout(timeout);
              $(document.body).removeClass('default');
            }, 100)
          }, 400);
        }
        dCoverImg.load(onCoverLoad);
        if(dCoverImg[0].complete) {
          onCoverLoad();
        }
        // 滚动
        dWindow.scroll(window.debounce((function() {
          windowWidth = $(window).width();
          var scrollTop = document.body.scrollTop;
          if (windowWidth >= 768) {
            dCoverImg.css('transform', 'translate(0,' + (scrollTop / 4) + 'px');
            var opacityNum = 1 - scrollTop / 600;
            dCoverIntro.css('opacity', opacityNum >= 0 ? opacityNum : 0);
          }
          if (scrollTop <= 0) {
            $header.removeClass('header-not-top').addClass('header-top');
          } else {
            $header.removeClass('header-top').addClass('header-not-top');
          }
        }), 15));
        // 鼠标和点击
        function onNavpageNavHover(e) {
          var navKey = parseInt($(e.target).data('key'), 10);
          if (navKey >=0 && navKey < 4) {
            var curBg = dNavpageBackgrounds.children().eq(navKey).toggleClass('active');
          }
        }
        dNavpageNav.on('mouseover', 'li a', onNavpageNavHover);
        dNavpageNav.on('mouseout', 'li a', onNavpageNavHover);
        (function() {
          var clickCount = 0;
          dNavIcon.click(function() {
            clickCount ++;
            console.log(clickCount%2);
            dNavIcon.toggleClass('x');
            dPage.toggleClass('navpage-show');
            // 当加载页显示时禁止触摸事件。
            stopBodyScrolling(clickCount % 2 === 1);
          });
        })();
      });
    </script>
  </body>
</html>
