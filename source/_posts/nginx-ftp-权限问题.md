---
title: nginx ftp 权限问题
date: 2017-03-22 11:04:22
tags:
---
<pre>
	groupadd webgroup
	gpasswd -a www-data webgroup
	gpasswd -a git webgroup
	chgrp -R webgroup /var/forldn/blog/
	chmod -R 775 /var/forldn/blog/
</pre>