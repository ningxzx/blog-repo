<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.authoricon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>


{% if theme.copyright %}
<div class="powered-by">
  献给我的宝贝卢丹宁、项小么和猫二
</div>

<div class="theme-info">
  源于 -
  <a class="theme-link" href="https://hexo.io">
    NexT.{{ theme.scheme }}
  </a>
</div>
{% endif %}
