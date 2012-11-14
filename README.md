# w3c-mvs
[W3C Markup Validation Service](http://validator.w3.org)の結果を出力するRubyプログラムです。

## autocheck.rb
Web上の複数のページのバリデートを自動で行います。

### 使い方
1. 以下の書式でタブ区切りのURLリストファイル `url-list.txt` を作り、`autocheck.rb` のあるディレクトリに配置します。

        #コメント
        タイトル1	URL1
        タイトル2	URL2
        …

2. ターミナルで `autocheck.rb` のあるディレクトリまで移動し、以下を実行します。

        $ ruby autocheck.rb（UTF-8環境）
        $ ruby autocheck.rb | tee resut.txt（標準出力とファイルの両方に出力）
        $ ruby autocheck.rb > result.txt（非UTF-8環境、ファイルに出力）

### 出力
妥当でないページの一覧がInvalid節に出力されます。また、HTTPエラーなどにより妥当性が判定できなかったページの一覧がCannot determined節に出力されます。

### 既知の問題
現在は出力をUTF-8で行っているため、非UTF-8環境のターミナルでは文字化けが起こります。その場合はファイルに出力してください。
