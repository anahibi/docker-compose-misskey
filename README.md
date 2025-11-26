# misskey-compose

Misskeyと必要なコンポーネントをDockerコンテナで動かすためのスクリプト群です。  
Misskey、Postgresql(PGroonga)、Redis、Caddy、CloudflareTunnelを使います。  

## 設定ファイル作成

設定ファイルを作成します。  

```
cp .env.example .env
```

.envは、PostgresqlとRedisの認証情報と、Cloudflare Tunnelのトークンを設定します。

```
POSTGRES_DB=mk1
POSTGRES_USER=misskey
POSTGRES_PASSWORD=
REDIS_PASSWORD=
TUNNEL_TOKEN=
```

## Misskeyの設定

./misskey/config.yml にMisskeyの設定を記載してください。

## コンテナの起動

以下のコマンドでMisskey、Redis、Postgresqlが起動します。

```
docker compose up -d
```

WebサーバーとCloudflare Tunnelを起動する場合は次のコマンドを使います。

```
docker compose --profile cf --profile proxy up -d
```

正常性確認は次のコマンドで行います。

```
docker compose ps
```

## Postrgesqlのチューニング

[PGTune](https://pgtune.leopard.in.ua/)でPostgresqlのチューニングをおすすめします。  
postgresql.confはボリュームマウントしていないため、`ALTER SYSTEM SET` コマンドで投入してください。
