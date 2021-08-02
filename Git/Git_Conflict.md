# git Conflict解除方法


## Conflictが発生した状況を設定
<img src="image/スクリーンショット 2020-07-06 23.16.36.png">

topic-Bとtopic-Cは同じファイルをいじっている
topic-Bをmasterにマージした後、topic-Cをmasterにマージしようとすると、Conflict発生

<img src="image/スクリーンショット 2020-07-06 23.18.00.png">
実際Conflictが発生した画面

## GithubサイトではConflictした中身を見れないので、Terminalでツールを利用
<img src="image/スクリーンショット 2020-07-06 23.21.09.png">
topic-Cブランチからmasterにマージしようとすると、cat_mars.txtファイルにConflictが発生していることが分かる

<img src="image/スクリーンショット 2020-07-06 23.21.29.png">
ファイルを確認すると、どこでConflictしているのかが分かる

<img src="image/スクリーンショット 2020-07-06 23.27.03.png">
内容変更し、git add を使って、修正した内容を保存する。

<img src="image/スクリーンショット 2020-07-06 23.27.31.png">
コミット・プッシュする（**Conflict解除したファイルのみコミットすること**)
<img src="image/スクリーンショット 2020-07-06 23.27.58.png">
結果。Conflict解除
<img src="image/スクリーンショット 2020-07-06 23.29.03.png">
Conflict解除した時にGitのネットワーク図を見るとこんな状況
<img src="image/スクリーンショット 2020-07-06 23.29.31.png">
これをmasterにプルリクエスト→マージすれば完了






