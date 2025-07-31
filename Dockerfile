# 使用 Ruby 官方镜像
FROM ruby:3.1-slim

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 复制 Gemfile
COPY Gemfile* ./

# 安装 Ruby 依赖
RUN bundle install

# 复制项目文件
COPY . .

# 构建站点
RUN JEKYLL_ENV=production bundle exec jekyll build

# 使用 nginx 提供静态文件服务
FROM nginx:alpine
COPY --from=0 /app/_site /usr/share/nginx/html

# 暴露端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]