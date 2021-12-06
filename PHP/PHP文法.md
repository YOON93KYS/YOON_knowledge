# 基本文法

!：逆
isset：存在している + NULLではない
explode：文字列を指定した文字列で分割
is_array：配列型かどうか

# SQL（クエリビルダー）
Carbon::now()->dayOfWeek; //0:日曜日〜6:土曜日
Carbon::now()->format('H:i'); //hh:mm

## 必要なカラムやレコードのみ絞って計算する方法
$posts = DB::table('posts')->where('id','=',1)->first();

SQLにすると
```
select * from posts where id = 1 limit 1
```

## 特定列だけ必要な場合
$posts = DB::table('posts')->where('id','=',1)->select(['id','title'])->first(); 

SQLにすると
```
select id,title from posts where id = 1 limit 1
```


## 集計

```
$users = DB::table('users')->count();
$price = DB::table('orders')->max('price');
```

# Laravelのバージョン確認方法
composer.jsonから確認可能

## Performance改善のために先にレコード数を絞ってから計算したい場合

        $Lat = $params['Lat'] ?? '';
        $Long = $params['Long'] ?? '';
        $currentLong = 'bb';
        $distance = $params['KKK'];
        $m_optimize = DB::table('m')
                            ->whereBetween('A', [$Lat - 0.027, $Lat + 0.027])
                            ->whereBetween('b', [$Long - 0.03375, $Long + 0.03375]);
        $query =  DB::table($m_shop_optimize, 'm')
              ->select(
                  'm.post_id as id'
                )
## サブクエリ

        $Lat = $params['Lat'] ?? '';
        $Long = $params['Long'] ?? '';
        $currentLong = 'bb';
        $distance = $params['KKK'];
        $m_optimize = DB::table('m')
                            ->whereBetween('A', [$Lat - 0.027, $Lat + 0.027])
                            ->whereBetween('b', [$Long - 0.03375, $Long + 0.03375]);
        $query =  DB::table($m_shop_optimize, 'm')
              ->select(
                  'm.post_id as id'
                )
        $latestposts = DB::table('m_shops_deliveries')
                        ->where('shop_code', '41466');
        $query =  DB::table($m_shop_optimize, 'm')
              ->select(
                  'm.post_id as id',
                　'latest_posts.shop_code as shop_code',
                )
              ->joinSub($latestposts, 'latest_posts', function ($join) {
                $join->on('latest_posts.post_id', '=', 'm.post_id');
              })
              ->get();