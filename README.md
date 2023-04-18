# docker-replace-string

## このソースの目的
- Apacheを起動する
- Apache起動前に、カレントディレクトリ配下のファイルを再帰的に確認し、ファイルの中身を文字列置換する
- 置換文字列は、環境変数から読み込む
- docker-compose でDockerの定義をする
- docker-compose に環境変数ファイルを読み込む定義を記載する
- コンテナは常時起動させる