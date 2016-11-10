#Ubuntu14.04的ROS安装


<br/>
##一、配置Ubuntu的软件源

<big>
**配置Ubuntu要求允许接受resricted,universe和multiverse的软件源，配置结果如下图所示：**

![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/0.png?raw=true)

<br/>
##二、ROS安装笔记

**<big>1.添加软件源到sources.list</big>**

&#8195;**在虚拟机中输入下面的代码**

&#8195;&#8194;`$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'`

&#8195;**结果如图所示：**
![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/1.png?raw=true)

<br/>

**<big>2.设置密钥</big>**

&#8195;**继续输入下面的代码**

&#8195;&#8194;`$ sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116`

&#8195;**结果如图所示：**
![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/2.png?raw=true)

<br/>

**<big>3.进行安装</big>**

+ **输入下面的命令进行安装**

&#8195;&#8194;`$ sudo apt-get update`

&#8195;**安装完成的标志：**
![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/3.png?raw=true)

+ **在ROS中有许多不同的函数库和工具，建议是完全安装，也可以根据自己的要求分别安装。即输入下面的指令：**

&#8195;&#8194;`$ sudo apt-get install ros-indigo-desktop-full`

&#8195;**安装完成的标志：**
![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/4.png?raw=true)

<br/>

**<big>4.初始化rosdep</big>**

+ **rosdep可以更方便的安装一些系统依赖程序包，而且ROS的一些主要部件的运行也需要rosdep。**

&#8195;&#8194;`$ sudo rosdep init`

&#8195;**初始化的结果：**![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/5.png?raw=true)

&#8195;(其中的error是因为这里我是配置结束后的重新截图，所以才会有之前已经初始化过的报错)

&#8195;&#8194;`$ rosdep update`

&#8195;**更新的结果：**![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/6.png?raw=true)

<br/>

**<big>5.设置环境</big>**

+ **添加ROS的环境变量，输入以下指令：**

&#8195;&#8194;`$ echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc`

+ **输入下面的指令使环境变量设置立即生效**

&#8195;&#8194;`$ source ~/.bashrc`

<br/>

**<big>6.安装rosinstall</big>**

+ **rosinstall命令是一个使用的非常频繁的命令，使用这个命令可以轻松的下载许多ROS软件包。**

&#8195;&#8194;`$ sudo apt-get install python-rosinstall`

&#8195;**安装结束的标志：**![](https://github.com/oguriguoguo/ES2016_14353073/blob/master/7.png?raw=true)

<br/>

&#8195;**<big>完成以上步骤之后，ROS就已经顺利安装配置好了！</big>**

<br/>

##三、实验感想与心得

**<big>&#8195; 这次的实验相对来说还是比较顺利的，按照TA上课给出的实验文档中的网页，按顺序依次键入命令，进行安装配置，没有像配置其他环境那样遇到一些难解的困难之类的。唯一一点小问题是：原网页最后还有几个命令，但是我输入了这些命令之后感觉上是有一些问题出现的，所以刚开始以为ROS没有安装好，又重复安装了几次，结果还是一样。最后发现群里有人问了同样的问题，TA说网页上的第一部分都顺利完成，没有报错的话就是安装成功了，第二部分是获取ROS的源码部分，所以我才知道，原来我的ROS安装部分是已经成功实现了的！</big>**
