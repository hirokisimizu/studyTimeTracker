# ARM64対応のPHP Dockerfile
FROM --platform=linux/arm64 php:7.4-fpm
RUN docker-php-ext-install pdo_mysql
COPY . /var/www/html
WORKDIR /var/www/html


# Node.jsのDockerfile
FROM node:14-buster

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールする
# パッケージ.json と パッケージロック.jsonをコピー
COPY package*.json ./

RUN npm install
# 本番環境のためのコードをビルドする場合は npm ci --only=production

# アプリケーションのソースをバンドルする
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
