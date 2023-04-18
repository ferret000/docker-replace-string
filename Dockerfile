#################################################
# コンテナの作成
#################################################
# ベースイメージ取得
FROM httpd
# ライブラリインストール
RUN apt-get update && apt-get install -y curl
# shellのコピー
COPY ./shell/run_init.sh /usr/local/apache2/htdocs/run_init.sh
# shellの実行
CMD ["/bin/sh", "/usr/local/apache2/htdocs/run_init.sh"]