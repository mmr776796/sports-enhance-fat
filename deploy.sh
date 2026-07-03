#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
DIST_DIR="$ROOT_DIR/dist"

echo "清理旧的 dist 目录..."
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

echo "复制静态文件到 dist/ ..."
cp -r "$ROOT_DIR"/index.html "$DIST_DIR"/
cp -r "$ROOT_DIR"/运动改善肥胖原理 "$DIST_DIR/" || true

echo "生成完成。可通过以下命令预览："
echo "  python3 -m http.server --directory dist 8000"
echo "然后打开 http://localhost:8000/ 来查看部署后的站点。"

exit 0
