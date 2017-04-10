---
title: export 与 export default的区别
date: 2017-04-10 14:50:47
tags:
---
### 先说结论：
#### export
1. 导出的合格形式有两种
	- 用大括号括起来，类似 export {a , b as box} （可以用as设置新的命名，import里必须与新名字对应）。
	- 重新声明变量导出，类似 export {a} ; export let b = box;
2. 在import这个文件的时候，变量名需要与导出的变量名一一对应。import处 必须用大括号把变量括起来。类似import {a} from source.js ，变量名不对应时会报错，import {other} from source.js。
3. 同一个js文件里可以有多个export。
---- 
#### export default
1. export default 可以导出任意类型的数据。
2. 在import时，可以随意命名接收的变量。
3. 单个文件只能有一个export default，有多个export default，bable编译时会报错。









#### 相关链接
1. [Github exports例子][1]
2. [MDN详解][2]

[1]:	https://gist.github.com/motss/1393933323c45600e609adf8c64ac4da
[2]:	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/export