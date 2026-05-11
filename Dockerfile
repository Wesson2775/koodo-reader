# 使用 Koodo Reader 的官方镜像
FROM ghcr.io/koodo-reader/koodo-reader:master

# 修复权限问题：允许 Caddy 服务器以非 root 用户运行
# Render 容器默认以非 root 用户“render”运行，需要开放端口权限
USER root
RUN apt-get update && apt-get install -y libcap2-bin && \
    setcap 'cap_net_bind_service=+ep' /usr/bin/caddy && \
    apt-get remove -y libcap2-bin && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
USER render

# 设置默认开启网页服务器模式
ENV ENABLE_HTTP_SERVER=true

# 暴露端口
EXPOSE 80
