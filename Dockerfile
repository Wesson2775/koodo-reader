# 使用 Koodo Reader 的官方镜像
FROM ghcr.io/koodo-reader/koodo-reader:master

# 设置默认开启网页服务器模式
ENV ENABLE_HTTP_SERVER=true

# 暴露默认端口
EXPOSE 80

# 这个镜像内部会自动读取 SERVER_USERNAME 和 SERVER_PASSWORD 环境变量
# 我们不在代码里设置它们的值，而是在 Render 平台上设置
