m1は「~/.zshrc」を設定する必要がある

# 手順
1. vi ~/.zshrc コマンド入力

2. binのPATHを設定

```
export PATH="$PATH:`binがあるPATH`"
```

```
ex)
export PATH="$PATH:~/Downloads/flutter/bin"
```

3.設定ファイル更新

```
source ~/.zshrc
```

4.（必要に応じて）環境変数確認

```
echo $PATH
```