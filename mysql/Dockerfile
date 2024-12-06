FROM mysql:8.4.3
LABEL maintainer="TomoProg"
RUN microdnf update && microdnf install -y \
	vim-minimal

# 設定ファイルの追加
COPY ./resources/my.cnf /etc/mysql/conf.d/
RUN chmod 644 /etc/mysql/conf.d/my.cnf

# MySQLクライアントで日本語を入力可能にする
# 参考：https://qiita.com/noradogg/items/e0e09db2e548dff3b664
RUN microdnf install -y glibc-locale-source \
    && localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8