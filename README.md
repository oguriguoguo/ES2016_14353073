#DOL开发环境配置


<br/>
##一、DOL框架描述

<big>
**&#8195;The distributed operation layer (DOL) is a software development framework to
program parallel applications. The DOL allows to specify applications based on 
the Kahn process network model of computation and features a simulation engine 
based on SystemC. Moreover, the DOL provides an XML-based specifi-cation format to 
describe the implementation of a parallel application on a multi-processor systems, 
including binding and mapping.The DOL consists of basically three parts:**

+ **DOL Application Programming Interface**
+ **DOL Functional Simulaion**
+ **DOL Mapping Optimization**
![](http://thumbnail0.baidupcs.com/thumbnail/a566f8f76666981593766cfd224dea7d?fid=2432703063-250528-809632490140110&time=1475830800&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-OTnACekV4Fpi1%2Bkx3ipeLZTd8dg%3D&expires=2h&chkv=0&chkbd=0&chkpc=&dp-logid=3892116902&dp-callid=0&size=c850_u580&quality=100)

<br/>
##二、DOL安装笔记

**<big>1.安装一些必要的环境</big>**

+ **在虚拟机中依次输入以下代码**

&#8195;&#8194;`$	sudo apt-get update`

&#8195;&#8194;`$	sudo apt-get install ant`

&#8195;&#8194;`$ 	sudo apt-get install openjdk-7-jdk`

&#8195;&#8194;`$	sudo apt-get install unzip`

<br/>

**<big>2.下载群中的文件，复制到虚拟机中去，并进行解压</big>**

+ **新建dol的文件夹**

&#8195;&#8194;`$	mkdir dol`

+ **将dolethz.zip解压到 dol文件夹中**

&#8195;&#8194;`$	unzip dol_ethz.zip -d dol`

+ **解压systemc**

&#8195;&#8194;`$	tar -zxvf systemc-2.3.1.tgz`

<br/>

**<big>3.编译systemc</big>**

+ **解压后进入systemc-2.3.1的目录下**

&#8195;&#8194;`$	cd systemc-2.3.1`

+ **新建一个临时文件夹objdir**

&#8195;&#8194;`$	mkdir objdir`

+ **进入该文件夹objdir**

&#8195;&#8194;`$	cd objdir`

+ **运行configure**

&#8195;&#8194;`$	../configure CXX=g++ --disable-async-updates`

>**<big>实施上述步骤后的运行结果如下：</big>**

![](http://thumbnail0.baidupcs.com/thumbnail/bdc0984517463a2007773b1b9abf6b5f?fid=2432703063-250528-617882074405453&time=1475830800&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-bH3LKt%2FX42iifF9xJLr6PgMKEcg%3D&expires=2h&chkv=0&chkbd=0&chkpc=&dp-logid=4058878637&dp-callid=0&size=c850_u580&quality=100)

+ **编译**

&#8195;&#8194;`$	sudo make install`

>**<big>编译后的文件目录为：</big>**
&#8194;![](http://thumbnail0.baidupcs.com/thumbnail/1c5eff87f2f3c2c8abe84badbd5df583?fid=2432703063-250528-547817748855617&time=1475834400&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-DfF77evaVPnpEE8T4wKP6xTtPWc%3D&expires=2h&chkv=0&chkbd=0&chkpc=&dp-logid=4102961169&dp-callid=0&size=c850_u580&quality=100)

+ **记录当前的工作路径**

&#8195;&#8194;`$	pwd`

>**<big>工作路径为：</big>**
&#8194;![](http://thumbnail0.baidupcs.com/thumbnail/dc987ed4f899d741436d702ab8bf0e84?fid=2432703063-250528-874814689054139&time=1475834400&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-nDrPjar%2FnC8UKIpyhEDnEu2Txf8%3D&expires=2h&chkv=0&chkbd=0&chkpc=&dp-logid=4121588629&dp-callid=0&size=c850_u580&quality=100)

<br/>

**<big>4.编译DOL</big>**

+ **进入刚刚DOL的文件夹**

&#8195;&#8194;`$	cd ../dol`

+ **找到下面这段话，修改build_zip.xml文件**


> property name="systemc.inc" value="pwd的结果/include"/

> property name="systemc.lib" value="pwd的结果/lib-linux/libsystemc.a"/

+ **进行编译**

&#8195;&#8194;`$	ant -f build_zip.xml all`

>**<big>编译成功会显示下图所示的"build successful"：</big>**

![](http://thumbnail0.baidupcs.com/thumbnail/5fc8f1a2d119c34923132b92cd924e0b?fid=2432703063-250528-511643621891890&time=1475834400&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-Lc8m%2FGFsaQY4LgRqJ5%2Bg2ibSLDU%3D&expires=2h&chkv=0&chkbd=0&chkpc=&dp-logid=4187131035&dp-callid=0&size=c850_u580&quality=100)

<br/>

**<big>5.至此完成DOL的配置</big>**

+ **进入build/bin/mian路径下**

&#8195;&#8194;`$	cd build/bin/main`

+ **运行第一个例子**

&#8195;&#8194;`$	ant -f runexample.xml -Dnumber=1`

>**<big>成功运行结果为：</big>**
&#8194; ![](http://thumbnail0.baidupcs.com/thumbnail/af9d79ffa0c582c59e19dafd488caa87?fid=2432703063-250528-446576644530236&time=1475834400&rt=sh&sign=FDTAER-DCb740ccc5511e5e8fedcff06b081203-aBRNBvdICS%2F2h%2Bm5UztUM2QeTkc%3D&expires=2h&chkv=0&chkbd=0&chkpc=&dp-logid=4255233438&dp-callid=0&size=c850_u580&quality=100)

<br/>

##三、实验感想与心得

**<big>&#8195; 这次的实验相对来说还是比较顺利的，因为上个学期的操作系统就有用到虚拟机，所以省去了配置Ubuntu的一系列麻烦。DOL的环境配置按照PPT上的依次进行，也没有遇到难解的问题。</big>**


**<big>&#8195; 这次实验中让我感到比较有趣的还是第一次接触了markdown这个编辑器，开始的时候感觉是不知从何下手，但后来在看了网上的一些中文指导之后，觉得markdown的语言和web课上所学到的有很多类似之处，像是标题H1-H6这些，都有异曲同工之妙。在稍作理解之后还是顺利的完成了本次的实验报告。唯一遇到的问题是开始的时候不知道该怎样插入图片，因为网上的指导都是引用网络图片，但是我们的图片都是大量的截图。最后选择将图片传到百度云上，再复制图片的地址从而实现了本地图片的插入。</big>**
