# 部署指南

## 帽子云部署配置

### 1. 基本设置
- **仓库**: 选择此 GitHub 仓库
- **分支**: `main` 或 `master`

### 2. 构建配置

**方式一：使用构建脚本**
- 构建命令: `./build.sh`
- 输出目录: `_site`

**方式二：直接命令**
- 构建命令: `bundle install && JEKYLL_ENV=production bundle exec jekyll build`
- 输出目录: `_site`

**方式三：使用 npm 脚本**
- 构建命令: `npm run build`
- 输出目录: `_site`

### 3. 环境变量
```
JEKYLL_ENV=production
BUNDLE_WITHOUT=development:test
```

### 4. 其他静态托管平台

#### Netlify
- 构建命令: `bundle exec jekyll build`
- 发布目录: `_site`

#### Vercel
- 构建命令: `bundle exec jekyll build`
- 输出目录: `_site`

#### GitHub Pages
- 推送到 `master` 分支自动部署
- 访问地址: `https://[username].github.io/[repository-name]`

### 5. 本地开发
```bash
# 安装依赖
bundle install

# 启动开发服务器
bundle exec jekyll serve

# 或使用 npm 脚本
npm run dev
```

### 6. 故障排除

如果构建失败，检查：
1. Ruby 版本是否兼容（推荐 3.2.0+）
2. 依赖是否正确安装
3. 环境变量是否设置正确

### 7. 性能优化建议

- 启用 CDN 加速静态资源
- 配置 gzip 压缩
- 设置适当的缓存策略