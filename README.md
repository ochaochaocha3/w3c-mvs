# w3c-mvs
[W3C Markup Validation Service](http://validator.w3.org) の結果を出力する Ruby プログラムです。

## check.rb
Web 上の単一のページのバリデートを行います。

### 使い方
ターミナルで w3c-mvs のディレクトリまで移動し、以下を実行します。

    $ ruby check.rb URL

### 出力
ページが妥当ならば `Valid` と、妥当でないならば `Invalid` と表示されます。HTTP エラーなどにより妥当性が判定できなかった場合は `Cannot determined.` と表示されます。

### 制限事項
短時間に大量のアクセスを行うことを防止するため、チェック終了後に1秒間のポーズが入ります。

## autocheck.rb
Web上の複数のページのバリデートを自動で行います。

### 使い方
1. 以下の書式でタブ区切りのURLリストファイル `url-list.txt` を作り、w3c-mvs のディレクトリに配置します。

        #コメント
        タイトル1	URL1
        タイトル2	URL2
        …

2. ターミナルで w3c-mvs のディレクトリまで移動し、以下のいずれかを実行します。

        $ ruby autocheck.rb（UTF-8 環境）
        $ ruby autocheck.rb | tee resut.txt（標準出力とファイルの両方に出力）
        $ ruby autocheck.rb > result.txt（非 UTF-8 環境、ファイルに出力）

### 出力
妥当でないページの一覧が `Invalid` 節に出力されます。また、HTTP エラーなどにより妥当性が判定できなかったページの一覧が `Cannot determined` 節に出力されます。

### 制限事項
* 現在は出力を UTF-8 で行っているため、非 UTF-8 環境のターミナルでは文字化けが起こります。その場合はファイルに出力してください。
* 短時間に大量のアクセスを行うことを防止するため、1ページのチェック終了後に1秒間のポーズが入ります。
