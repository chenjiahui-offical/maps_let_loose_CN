构建文档
=

### 环境设置

获取仓库副本

```
git clone https://github.com/chenjiahui-offical/maps_let_loose_CN.git
```

按照您的操作系统步骤安装 Ruby（以及 jekyll 和 bundler gems）

- https://jekyllrb.com/docs/installation/
    - Ruby+Devkit 默认设置
    - `gem install jekyll bundler`

在命令提示符或终端中，cd 到您克隆的项目目录并运行 `bundle install` 来安装项目 Gemfile 中 github-pages 所需的 gems（这可能需要一些时间）。

### 构建和运行

在命令提示符或终端中，cd 到您克隆的项目目录并运行 `bundle exec jekyll serve`，
然后您可以在 http://localhost:4000 查看实时版本

使用您喜欢的任何编辑器（WebStorm、VSCode、Notepad++ 等）更新应用程序，Jekyll 的工作方式是在运行时对文件所做的编辑会被自动检测并发布，您只需要刷新浏览器实例即可看到更改。
