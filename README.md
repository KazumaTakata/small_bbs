
## 環境 
ruby 2.4.3p205。
他の詳細はGemfile。

## ログイン機能

name:string, email:string, password:string
を用いてのログイン機能。
それぞれvalidationを行っている。
emailの場合は、regexを用いてvalidationを行っている。
ユーザーidを保持した暗号化されたcookieを用いてユーザー
を追跡。
ブラウザを閉じるとlogoutした状態になる。
logoutする機能がある。

   
## 閲覧投稿機能

閲覧投稿機能はログインをせずとも可能にしている。
各スレッドでコメントを投稿することができ、ログインをしているユーザーは投稿に名前が付与させる。
ログインしていない場合には、NO NAMEが付与される。

## スレッド機能

ログインしていなくてもスレッドは作成可能。


## カテゴリー設定

あらかじめ決められたカテゴリーの中から、複数のカテゴリーを付与することが
できる。

## 検索機能
sqlのWHERE clause内でlike operatorを用いて実装。
full text searchはできない。
検索結果からそのコメントが存在するスレッドにアクセスすることができる。


## validation
全てのユーザーからのinputに対しvalidationを行っている。


# QUICK START
```
git clone https://github.com/KazumaTakata/small_bbs
cd small_bbs
rails db:migrate
rails s
```

