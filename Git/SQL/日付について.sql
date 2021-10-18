-- date_part

-- trunc
timestampをdateに変更するとき、よく使う

```
select sysdate
```

```
select trunc(sysdate)
```

-- date_trunc
基準日より、何ヶ月前のデータを使う時、よく使う
```
-- 現在より一ヶ月前のデータ
select date_trunc('month', date_add('month', -1, convert_timezone('JST',sysdate)))
```

-- datediff
日付ごとの差分を比較する時、よく使う

```
select datediff(day, trunc(sysdate), '2021-01-01')
```


-- dateadd
基準日より、何日までのデータが必要な時、よく使う

```
-- 現在日より60日前のデータ
select dateadd('day', -60, date_trunc('day', convert_timezone('JST',sysdate)))
```

-- dateの使い分け（パフォーマンス的に）
抽出条件でdateを使う。結合条件ではdateをcaseを使って文字列に変換した後、使う