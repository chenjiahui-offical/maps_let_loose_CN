#!/bin/bash
set -e

echo "检查 Ruby 环境..."
ruby --version || echo "Ruby 未安装"
gem --version || echo "Gem 未安装"

echo "安装 Bundler..."
gem install bundler || echo "Bundler 安装失败"

echo "安装项目依赖..."
bundle install --without development test

echo "构建 Jekyll 站点..."
JEKYLL_ENV=production bundle exec jekyll build

echo "构建完成！输出目录: _site"
ls -la _site/