## ログイン機能

name:string, email:string, password:string
を用いてのログイン機能。
それぞれvalidationを行っている。
emailの場合は、regexを用いてvalidationを行っている。

   
## 閲覧投稿機能

閲覧投稿機能はログインをせずとも可能にしている。
ログインをしているユーザーは投稿に名前が付与させる。
ログインしていない場合には、NO NAMEが付与される。

## スレッド機能

ログインしていなくてもスレッドは作成可能。


## カテゴリー設定

あらかじめ決められたカテゴリーの中から、複数のカテゴリーを付与することが
できる。

## 検索機能
sqlのlike queryを用いて実装。
full text searchはできない。


## validation
全てのユーザーからのinputに対しvalidationを行っている。

# QUICK START

```
git clone https://github.com/KazumaTakata/small_bbs
cd small_bbs
rails s
```

