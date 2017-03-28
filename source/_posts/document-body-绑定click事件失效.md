---
title: document.body 绑定click事件失效
date: 2017-03-28 11:07:43
tags:
---
实现 vue 数字输入法时需要给body绑定一个点击事件。发现IOS上无效，mac chrome上表现正常，估计是绑定事件出了问题。


无效做法：
<pre>
	  document.body.addEventListener('click', this.handleFocusOrBlur,false)
</pre>	

正解：
 <pre>
 	  document.getElementById('app').addEventListener('click', this.handleFocusOrBlur,false)
 </pre>
    
