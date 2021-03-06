---
title: ubuntu上部署nodejs
date: 2017-03-17 15:37:08
tags:
	- ubuntu
	- 部署
	- nodejs
category: 编程
---

## 需求
在[上文](http://blog.forldn.cn/posts/uncategorized/2017-03-17-%E9%80%9A%E8%BF%87git-hooks%E8%87%AA%E5%8A%A8%E9%83%A8%E7%BD%B2.html）中，需要打开网站根文件夹（cd $GIT_WORK_TREE)安装好git hooks的脚本中需要对网站源文件进行build，当在bash脚本中执行node命令（npm install 和 npm run build）时,提示 node: command not found，于是开始在阿里云上部署nodejs。

## 尝试做法
- 首先想到的就是 ubuntu装包（apt-get install nodejs），node -v后显示版本为0.10.25，版本过低。
随后尝试了
	<pre>
	curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -  
	sudo apt-get install -y nodejs
	</pre>
nodejs -v，版本号依旧显示为0.10.25。并且bash也没有执行。
但是更主要的原因是，我不清楚ubuntu中有一个还是两个nodejs版本，这让强迫症的我很难受，想找一个清爽的解决办法。
<!-- more -->
- 使用nvm安装，很方便，但是没有把node加到bash命令，每次都要重新source编译

## 成功做法
1. 首先安装npm,nodejs

2. 随后安装n，通过这个包安装node.js(latest/stable)

3. 最后升级npm版本
代码如下
	<pre>
	apt-get install nodejs
	apt-get install npm
	npm install -g cnpm --registry=https://registry.npm.taobao.org
	cnpm i -g n
	n latest
	cnpm i -g npm
	</pre>
快去试试吧！

