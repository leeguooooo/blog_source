<a href="https://count.chanet.com.cn/click.cgi?a=536545&d=382348&u=&e=&url=https%3A%2F%2Fwww.canda.cn%2F" target="_blank"><img src="https://ws1.sinaimg.cn/large/005T0OjCly1fmoendkjrnj30l401omxw.jpg" width="1" height="1"  border="0"><img src="https://ws1.sinaimg.cn/large/005T0OjCly1fmoendkjrnj30l401omxw.jpg" border="0"</a>
<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; &nbsp; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="icon-next-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }} | 去哪儿郭立 | lee.guo | https://leeguoo.com | https://myblog.leeguoo.com</span>
</div>
<!--
<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>-->
{% block footer %}{% endblock %}
