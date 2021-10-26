m1は~/.bash_profileと ~/.zshrc 両方とも設定する必要がある

# 手順
1.vi ~/.bash_profile　コマンド入力
2. binのPATHを設定

```
export PATH="$PATH:`pwd``binがあるところ`"
```

```
ex)
export PATH="$PATH:/Users/yoonhyeonho/Downloads/flutter/bin"
```

3. vi ~/.zshrc コマンド入力

4. binのPATHを設定

```
export PATH="$PATH:`pwd``binがあるところ`"
```

```
ex)
export PATH="$PATH:/Users/yoonhyeonho/Downloads/flutter/bin"
```