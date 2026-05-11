# 使用 Docker Hub 上兼容性更好的 Koodo Reader 镜像
FROM ghcr.com/koodo-reader/koodo-reader:latest

# 设置环境变量
ENV ENABLE_HTTP_SERVER=true

# 暴露端口
EXPOSE 80
