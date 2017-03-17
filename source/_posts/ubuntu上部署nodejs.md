---
title: ubuntu上部署nodejs
date: 2017-03-17 15:37:08
tags:
	- ubuntu
	- 部署
	- nodejs
category: 编程
---

##需求
在[上文]（）
nvm，每次都要重新source编译
apt-get install nodejs,版本过低


最后感谢csdn的一个朋友
首先
安装npm,nodejs

随后
安装n
通过这个包安装node.js(latest/stable)

最后
升级npm版本
<pre>
apt-get install nodejs
apt-get install npm
npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm i -g n
n latest
cnpm i -g npm
</pre>

