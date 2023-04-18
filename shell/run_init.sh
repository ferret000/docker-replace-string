#!/bin/sh
#-----------------------------------------------------------
# Execute init process
#-----------------------------------------------------------
# STRING 変数が定義されていることを確認
if [ -z "$STRING" ]; then
  echo "STRING 環境変数が定義されていません。"
  exit 1
fi

# find コマンドを使用して .js ファイルを検索し、sed コマンドで置換を実行
find . -name '*.js*' -exec sed -i "s/<your_string>/$STRING/g" {} +

# クライアントアプリケーションの起動
exec apachectl -DFOREGROUND

#コンテナを起動し続ける
tail -f /dev/null