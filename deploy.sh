#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
DIST_DIR="$ROOT_DIR/dist"

echo "清理旧的 dist 目录..."
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

echo "复制静态文件到 dist/ ..."
cp -r "$ROOT_DIR"/index.html "$DIST_DIR"/
# 如果存在任意以“运动改善肥胖原理”开头的目录，则复制第一个匹配项
match_dir=$(ls -d "$ROOT_DIR"/运动改善肥胖原理* 2>/dev/null | head -n1 || true)
if [ -n "${match_dir:-}" ] && [ -e "$match_dir" ]; then
	cp -r "$match_dir" "$DIST_DIR"/
fi

echo "生成完成。可通过以下命令预览："
echo "  python3 -m http.server --directory dist 8000"
echo "然后打开 http://localhost:8000/ 来查看部署后的站点。"

exit 0
