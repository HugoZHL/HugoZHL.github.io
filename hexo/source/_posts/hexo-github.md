---
title: Hexo | Github博客部署
date: 2019-08-18 15:04:25
categories:
    - [计算机]
---

# 简介
* [Hexo](https://hexo.io/zh-cn/docs/)：一个十分方便的博客框架。
* Github.io：Github提供的域名解决方案。

# 配置
## Github
1. 在github上建立一个repository命名为 账户名.github.io 。
2. hexo部署时是通过ssh而非http进行的，因此需要在github上添加本设备的ssh公钥。如果本地没有~/.ssh/id_rsa.pub文件，则使用命令 `ssh-keygen -t rsa -C "Github邮件地址"`，再将~/.ssh/id_rsa.pub中的内容全部复制到github上添加新的ssh key即可。
## Hexo
1. 按照hexo文档的指示安装nodejs、git，使用npm安装hexo，按照文档指示在_config.yml文件中进行配置。
2. 在hexo所在文件夹中配置git。配置时可参考以下命令，使用config配置的作用是让github识别你的本地仓库是谁在维护。
```bash
git config --global user.name "Github账户名"
git config --global user.email "Github邮件地址"
```
3. 按照hexo文档熟悉一下hexo的相关命令，一般要用的只有 `hexo init` 初始化hexo，`hexo new 文章名`新建文章，`hexo generate`根据你的配置生成最终的静态网页，`hexo server`在本地查看网页效果，`hexo deploy`将静态网站部署到github上。
4. 可以在hexo的主题页面中选择一个自己想要的主题，并在hexo的_config.yml文件中进行配置，配置好以后可在themes文件夹中只保留一个最终留下的主题。
5. 上传到github前要在hexo的_config.yml中配置相应的deploy如下。这里的branch很有讲究，说明每次部署的时候只部署到该分支，其他分支并不会受到影响，这一点带来的好处将在接下来的进阶中看到。
```yml
deploy:
    type: git
    repository: git@github.com:账户名/账户名.github.io.git
    branch: master
```

# 进阶
普通的配置过程在hexo或者相应主题的文档中都能找到，此处提供一些有趣的进阶技巧。  

## 分类 Categories
使用分类十分简单，只需要在每篇文章的元数据中加上`categories: xxx`即可，一般有以下几种方式（注意-和[]之间有空格）
* 一种类别
```yml
categories:
    - [类别1]
```

* 多种类别，一篇文章属于多种并列的类别
```yml
categories:
    - [类别1]
    - [类别2]
    - [类别3]
```

* 多级类别，一篇文章属于某一大类中的某一小类，可与多种类别混用
```yml
categories:
    - [大类,中类,小类]
```
可以在主题文件夹的_config.yml中将分类页面列在菜单中，甚至将某一类列在菜单中
```yml
menu:
    categories: /categories/
    maths: /categories/maths/
```
在分类页面中可能想自定义类别的顺序，那么需要在主题文件夹中查找有`list_categories`函数的文件，不同主题可能文件不太一样。具体该函数的其他参数可以参考hexo文档；仅定义顺序可以使用如下写法，该写法会要求分类中按照数学、物理、计算机的顺序排序。
```javascript
list_categories({orderby: ["Mathematics", "Physics", "Computer Science"]})
```
标签Tags的用法与categories基本类似，此处不再赘述。

## 搜索
本文使用的方式是hexo自带的搜索功能。一般来说每种主题的_config.yml文件都已经有搜索功能的实现了，我们只需要将相应的搜索功能的enable从false改为true即可。如果使用hexo的搜索，那么应该选择local_search这一项。  
除了主题内的_config.yml，一般还需要两项操作，一是安装一个新的插件：
```bash
npm install hexo-generator-searchdb --save
```
二是修改hexo的_config.yml，添加如下内容：
```yml
search:
    path: search.xml
    field: post
    format: html
    limit: 10000
    content: true
```
对这个limit项可能有人会有疑惑，意思是每次查找最多会给多少个帖子作为结果。

## 多语言
官方的多语言实现仅针对各类元数据，如果要实现自己的元数据多语言可以在主题文件夹下的languages中的相应文件中添加映射；如果要实现文章的多语言，就没那么简单了。  
此处我们采取一个有趣的方法：对多种语言建立两个不同的hexo文件夹。除了现有的文件夹，我们复制一个一模一样的文件夹，修改相应的各项配置，使其中一个是中文，一个是英文，下载一模一样的插件，再设置二者网站的根目录不同即可。比如，中文的root和英文的root分别为：
```yml
# 中文
url: https://账户名.github.io
root: /

#英文
url: https://账户名.github.io/en
root: /en/
```
如果想要实现二者之间的跳转，此处给出一种解决方案：将跳转按钮放入目录，比如中文跳到英文和英文跳英文分别为：
```yml
# 中文->English
menu:
    English: /en/

# English->中文
menu:
    中文: ../
```
此时如果运行hexo的相关命令，只会在相应文件夹下起作用，并不能用一个命令解决所有问题。我们可以编辑一个sh文件，例如：
```bash
cd hexo
hexo clean
hexo g
cd ../hexo-en
hexo clean
hexo g
cp -r public/. ../hexo/public/en/
cd ../hexo
hexo d
```
每次改动之后想要部署时，运行该sh文件即可。该文件作用是：生成中文的静态网站，生成英文的静态网站，将英文的静态网站放到中文的静态网站文件夹下的en/文件夹下，再在中文的hexo文件夹下使用`hexo deploy`进行提交。


## 多人协作

如果想要多人协作或者使用多台电脑对博客进行管理，显然不能使用常规方法，因为github上存放的只有静态网站，而非整个hexo代码。  
如何解决呢？此时我们可以回想最开始设计_config.yml的部署部分时，设置了github的分支为master，也就是说其他分支是不会受到影响的。因此我们完全可以生成另外一个分支只存放hexo代码而非静态网站！  
在原项目中生成一个新的分支，比如可命名为hexo，将默认分支修改为hexo，并将该分支里面的内容删掉，换成整个hexo代码即可。需要注意：主题文件夹下有一个对该主题进行git的配置，需将其中的.git及相关文件删除。  
此时整个hexo文件夹就是一个git项目，按照git项目的方式进行同步即可；部署还是使用`hexo deploy`命令，只会修改静态网站同步到master分支，二者互不干扰。  
P.S. hexo通过ssh进行部署，github上同样需要存储另一台电脑的ssh公钥。


 