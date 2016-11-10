#DOL实例与编程

<br/>
### 实验任务 ###
1. 修改example2，让3个square模块变成2个, tips:修改xml的iterator
2. 修改example1，使其输出3次方数，tips:修改square.c

### 实验过程 ###

##### 1. 进入dol文件夹并编译dol，接着进入build/bin/mian 路径下，运行 example1 #####

    $ cd dol
    $ ant -f build_zip.xml all
    $ cd build/bin/main
    $ ant -f runexample.xml -Dnumber=1

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol1.png?raw=true)

example1 dot图：

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol2.png?raw=true)

##### 2. 打开dol/examples/example1/src/square.c，将square_fire函数中的i = i * i修改i = i * i * i，并保存 #####

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/lab3.2.png?raw=true)

##### 3. 将dol/build/bin/main文件夹中的example1整个文件夹删除 #####

##### 4. 进入dol文件夹并编译dol，接着进入build/bin/mian路径下，再次运行example1 #####

    $ cd
    $ cd dol
    $ ant -f build_zip.xml all
    $ cd build/bin/main
    $ ant -f runexample.xml -Dnumber=1

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol3.png?raw=true)

##### 5. 为区别原dot图，对example1各文件作如下修改： #####

首先进入dol/examples/example1/src，将square.c、square.h文件分别重命名为cubic.c、cubic.h，用记事本打开cubic.c、cubic.h、example1.xml、map_1.xml、map_3.xml，将其中所有的square改为cubic，并保存

* cubic.c

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol4.png?raw=true)

* cubic.h

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol5.png?raw=true)

* example1.xml

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol6.png?raw=true)

* map_1.xml

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol7.png?raw=true)

* map_3.xml
* 
![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol8.png?raw=true)

修改后example1 dot图：

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol9.png?raw=true)

##### 6. 运行example2 #####

    $ ant -f runexample.xml -Dnumber=2

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol10.png?raw=true)

example2 dot图：

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol11.png?raw=true)

##### 7. 进入dol/examples/example2，用gedit打开example2.xml，将变量N的值由3改为2，并保存 #####

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/lab3.1.png?raw=true)

##### 8. 同样，将dol/build/bin/main文件夹中的example2整个文件夹删除 #####

##### 9. 进入dol文件夹并编译dol，接着进入build/bin/mian路径下，再次运行example2 #####

    $ cd
    $ cd dol
    $ ant -f build_zip.xml all
    $ cd build/bin/main
    $ ant -f runexample.xml -Dnumber=2

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol12.png?raw=true)

example2 dot图：

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/dol13.png?raw=true)

<br/>
##三、实验感想
&#8195;&#8194;**本次的实验虽然我在开始的时候在理解代码上存在一些问题，在没具体看实验任务之前研究代码的时候花费了一些时间，但是最后的两个需要完成的实验任务还是都比较简单的，都是几乎一眼就能看出该如何进行修改的。所以没有遇到太大的问题。**

&#8195;&#8194;**问题比较多的地方在于为了让example1中平方操作和立方操作的dot图有所差别，对example1中的各个文件改动较多，比较繁琐。中间操作的过程也有很多弄错导致运行的时候出现error的现象，后来问了舍友还是最后还是顺利的解决啦！**
