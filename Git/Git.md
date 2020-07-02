# ブランチのデータをマージする以前のデータに変更する方法


## 現状
<img src="image/スクリーンショット 2020-07-02 21.40.04.png">


今回行いたいのは、Masterブランチのデータを直近のデータ（以下の赤い四角）に戻せること

<img src="image/スクリーンショット 2020-07-02 21.45.04の.png">

## 方法説明

### コミットコード確認

```
git log
```

git logを確認することで、赤い四角のコミットコードを把握する

<img src="image/スクリーンショット 2020-07-02 21.54.23.png">

一番下にある**「da....」**が赤い四角のcommitコードになる

### resetコマンド

```
 git reset --hard da238ca1b4bb3c7238435f5c86bfa2076b2e4753
```

<img src="image/スクリーンショット 2020-07-02 21.58.10.png">

resetコマンドを使うことで、Masterのブランチは「da238・・・・」にresetされる


### git pushで resetしたデータをOrigin_Masterに適応

```
git push origin --force
```

<img src="image/スクリーンショット 2020-07-02 22.01.57.png">

適応することで、Masterはdevをマージする以前のデータになりました。


## 結果
<img src="image/スクリーンショット 2020-07-02 21.44.51.png">


