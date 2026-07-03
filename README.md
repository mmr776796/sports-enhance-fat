# Sports Enhance Fat

这是一个静态网页项目，当前已将首页切换为最新的运动改善说明页面。

## 访问地址

- 首页入口：https://mmr776796.github.io/sports-enhance-fat/
- 最新网页：https://mmr776796.github.io/sports-enhance-fat/运动改善肥胖原理/

## 内容说明

项目包含一份交互式网页，用于展示“运动改善肥胖”的相关原理与方案说明。

## 本地部署（快速预览）

1. 生成 `dist` 并复制静态文件：

```bash
./deploy.sh
```

2. 启动本地静态服务器（默认端口 8000）：

```bash
python3 -m http.server --directory dist 8000
```

然后在浏览器打开 `http://localhost:8000/` 进行预览。

如需发布到 GitHub Pages，可将仓库 push 到 `main` 并在仓库设置中启用 Pages，或将 `dist` 内容推送到 `gh-pages` 分支。