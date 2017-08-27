# Docker定制您的PHP运行环境
# 能做什么
* Docker轻松搭建PHP运行环境。

* 可扩展行很强，根据CompilePHPEnvironment深度定制。

# 支持环境
CentOS           |  支持
-----------------| --------------
Ubuntu           |  支持
Mac              |  支持
```
.
├── Dockerfile
├── docker-library
│   ├── mysql
│   │   ├── 5.5
│   │   │   ├── docker-entrypoint.sh
│   │   │   └── Dockerfile
│   │   ├── 5.6
│   │   │   ├── docker-entrypoint.sh
│   │   │   └── Dockerfile
│   │   ├── 5.7
│   │   │   ├── docker-entrypoint.sh
│   │   │   └── Dockerfile
│   │   ├── 8.0
│   │   │   ├── config
│   │   │   │   ├── conf.d
│   │   │   │   │   └── docker.cnf
│   │   │   │   └── my.cnf
│   │   │   ├── docker-entrypoint.sh
│   │   │   └── Dockerfile
│   │   ├── generate-stackbrew-library.sh
│   │   ├── LICENSE
│   │   ├── README.md
│   │   └── update.sh
│   ├── nginx
│   │   ├── Dockerfile
│   │   ├── nginx.conf
│   │   └── nginx.vh.default.conf
│   └── php
│       ├── 5.6
│       │   ├── alpine
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── apache
│       │   │   ├── apache2-foreground
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── Dockerfile
│       │   ├── docker-php-entrypoint
│       │   ├── docker-php-ext-configure
│       │   ├── docker-php-ext-enable
│       │   ├── docker-php-ext-install
│       │   ├── docker-php-source
│       │   ├── fpm
│       │   │   ├── alpine
│       │   │   │   ├── Dockerfile
│       │   │   │   ├── docker-php-entrypoint
│       │   │   │   ├── docker-php-ext-configure
│       │   │   │   ├── docker-php-ext-enable
│       │   │   │   ├── docker-php-ext-install
│       │   │   │   └── docker-php-source
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   └── zts
│       │       ├── alpine
│       │       │   ├── Dockerfile
│       │       │   ├── docker-php-entrypoint
│       │       │   ├── docker-php-ext-configure
│       │       │   ├── docker-php-ext-enable
│       │       │   ├── docker-php-ext-install
│       │       │   └── docker-php-source
│       │       ├── Dockerfile
│       │       ├── docker-php-entrypoint
│       │       ├── docker-php-ext-configure
│       │       ├── docker-php-ext-enable
│       │       ├── docker-php-ext-install
│       │       └── docker-php-source
│       ├── 7.0
│       │   ├── alpine
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── apache
│       │   │   ├── apache2-foreground
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── Dockerfile
│       │   ├── docker-php-entrypoint
│       │   ├── docker-php-ext-configure
│       │   ├── docker-php-ext-enable
│       │   ├── docker-php-ext-install
│       │   ├── docker-php-source
│       │   ├── fpm
│       │   │   ├── alpine
│       │   │   │   ├── Dockerfile
│       │   │   │   ├── docker-php-entrypoint
│       │   │   │   ├── docker-php-ext-configure
│       │   │   │   ├── docker-php-ext-enable
│       │   │   │   ├── docker-php-ext-install
│       │   │   │   └── docker-php-source
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   └── zts
│       │       ├── alpine
│       │       │   ├── Dockerfile
│       │       │   ├── docker-php-entrypoint
│       │       │   ├── docker-php-ext-configure
│       │       │   ├── docker-php-ext-enable
│       │       │   ├── docker-php-ext-install
│       │       │   └── docker-php-source
│       │       ├── Dockerfile
│       │       ├── docker-php-entrypoint
│       │       ├── docker-php-ext-configure
│       │       ├── docker-php-ext-enable
│       │       ├── docker-php-ext-install
│       │       └── docker-php-source
│       ├── 7.1
│       │   ├── alpine
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── apache
│       │   │   ├── apache2-foreground
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── Dockerfile
│       │   ├── docker-php-entrypoint
│       │   ├── docker-php-ext-configure
│       │   ├── docker-php-ext-enable
│       │   ├── docker-php-ext-install
│       │   ├── docker-php-source
│       │   ├── fpm
│       │   │   ├── alpine
│       │   │   │   ├── Dockerfile
│       │   │   │   ├── docker-php-entrypoint
│       │   │   │   ├── docker-php-ext-configure
│       │   │   │   ├── docker-php-ext-enable
│       │   │   │   ├── docker-php-ext-install
│       │   │   │   └── docker-php-source
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   └── zts
│       │       ├── alpine
│       │       │   ├── Dockerfile
│       │       │   ├── docker-php-entrypoint
│       │       │   ├── docker-php-ext-configure
│       │       │   ├── docker-php-ext-enable
│       │       │   ├── docker-php-ext-install
│       │       │   └── docker-php-source
│       │       ├── Dockerfile
│       │       ├── docker-php-entrypoint
│       │       ├── docker-php-ext-configure
│       │       ├── docker-php-ext-enable
│       │       ├── docker-php-ext-install
│       │       └── docker-php-source
│       ├── 7.2-rc
│       │   ├── alpine
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── apache
│       │   │   ├── apache2-foreground
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   ├── Dockerfile
│       │   ├── docker-php-entrypoint
│       │   ├── docker-php-ext-configure
│       │   ├── docker-php-ext-enable
│       │   ├── docker-php-ext-install
│       │   ├── docker-php-source
│       │   ├── fpm
│       │   │   ├── alpine
│       │   │   │   ├── Dockerfile
│       │   │   │   ├── docker-php-entrypoint
│       │   │   │   ├── docker-php-ext-configure
│       │   │   │   ├── docker-php-ext-enable
│       │   │   │   ├── docker-php-ext-install
│       │   │   │   └── docker-php-source
│       │   │   ├── Dockerfile
│       │   │   ├── docker-php-entrypoint
│       │   │   ├── docker-php-ext-configure
│       │   │   ├── docker-php-ext-enable
│       │   │   ├── docker-php-ext-install
│       │   │   └── docker-php-source
│       │   └── zts
│       │       ├── alpine
│       │       │   ├── Dockerfile
│       │       │   ├── docker-php-entrypoint
│       │       │   ├── docker-php-ext-configure
│       │       │   ├── docker-php-ext-enable
│       │       │   ├── docker-php-ext-install
│       │       │   └── docker-php-source
│       │       ├── Dockerfile
│       │       ├── docker-php-entrypoint
│       │       ├── docker-php-ext-configure
│       │       ├── docker-php-ext-enable
│       │       ├── docker-php-ext-install
│       │       └── docker-php-source
│       ├── apache-Dockerfile-block-1
│       ├── apache-Dockerfile-block-2
│       ├── Dockerfile-alpine.template
│       ├── Dockerfile-debian.template
│       ├── docker-php-entrypoint
│       ├── docker-php-ext-configure
│       ├── docker-php-ext-enable
│       ├── docker-php-ext-install
│       ├── docker-php-source
│       ├── fpm-Dockerfile-block-1
│       ├── fpm-Dockerfile-block-2
│       ├── generate-stackbrew-library.sh
│       ├── LICENSE
│       ├── README.md
│       ├── update.sh
│       ├── zts-Dockerfile-block-1
│       └── zts-Dockerfile-block-2
├── docker-php-entrypoint
├── manager.sh
├── README.md
├── start.sh
└── tools
    └── base.sh
```

# 流程分析
* manager.sh配置镜像的名字的信息
* 通过manager.sh来完成全部操作
* docker-config是全部的docker配置信息，包括nginx、mysql、php
* 在构建基础镜像采用官方提供的Dockerfile，其中构建php修改加入了socket支持。
* 根目录的Dockerfile是为了深度定制，比如安装redis、mongodb、yaf、swoole扩展，我依旧采用了上一个开源项目来实现的[CompilePHPEnvironment](https://github.com/caojiabin2012/CompilePHPEnvironment)，在Dockerfile里加入调用shell的语法即可

# 简单使用方法
* git clone https://github.com/caojiabin2012/DockerPHPEnvironment.git
* cd DockerPHPEnvironment/
* git clone https://github.com/caojiabin2012/CompilePHPEnvironment.git
* bash manager.sh build_images php71
* bash manager.sh run_all php71
* 执行浏览器：本机ip/index.php

# 定制
* DockerPHPEnvironment/Dockerfile进行定制，主要用到了CompilePHPEnvironment这个项目。

# 安装失败需要怎么处理
* 作者已经很努力的调试Mac、CentOS和Ubuntu了，将缺少的类库都写到了程序中。在使用中如果您发现还是有遗漏的类库，如果能解决欢迎提交代码，如果不能，欢迎来此提交issue：https://github.com/caojiabin2012/DockerPHPEnvironment/issues/new
* 提交的issue一定要写好系统名称和版本哦！

# 为何会开发此脚本
* 每次搭建环境都要花费点时间，不论是源码编译还是使用源安装(yum或apt)。
* 编译安装相比源优点是可以定制版本，但是需要自己安装依赖库，速度慢，其实各有优缺点。
* 将自己经常重复的工作，写成一个项目开源出来，帮助自己还能帮助他人，何乐不为。

# 项目名称由来XxOoEnvironment
CompilePHPEnvironment    | 编译php版本
-------------------------| --------------
DockerPHPEnvironment     | Docker PHP版本(已实现)
CompilePythonEnvironment | 编译python版本
DockerPythonEnvironmenti | Docker Python版本
CompileGoEnvironment     | ...
DockeGoEnvironment       | ...
...                      | ...

喜欢学习+分享的你可以一起参与进来，90后的我们一起追赶80后吧！

# 开源协议
* 第三方类库版权参照对应作者或组织
* 本人写的没有任何版权欢迎使用
