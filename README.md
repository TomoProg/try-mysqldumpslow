# try-mysqldumpslow
mysqldumpslowを試してみた

## セットアップの方法

```
# Dockerコンテナのビルド & 立ち上げ
docker-compose up --build

# コンテナの中に入る
docker exec -it mysql /bin/bash

# コンテナの中でスクリプトを流す
mysql -h localhost -uroot -p12345678 < /var/scripts/data.sql
```

## mysqldumpslowの使い方
https://qiita.com/TomoProg/items/fe240aa7e717fa8d3f50
