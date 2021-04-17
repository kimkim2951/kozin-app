# README
<h1 align="center">缶詰投稿アプリ（缶交大使）</h1>

## :globe_with_meridians: アプリ概要
- 缶詰の投稿アプリです。自分のお気に入りの缶詰を投稿して情報をシェアする事が出来ます。

## :globe_with_meridians: コンセプト
- 情報発信のアプリケーションを作ろうと考えました。
- スーパーに並んでいる良く見かける商品意外にも、世の中にはこだわり品で美味しい商品がたくさんあります。
- 「良い商品」には日の目を見て欲しい、実際に使ったユーザーに感想を共有して情報発信して欲しい、
  最終的には商品に込めた「想い」が伝わると嬉しいと考えこのアプリケーションを作りました。

- 作成期間 7/25〜8/3 (10日間)

 <a>![個人アプリトップ画像](https://user-images.githubusercontent.com/67769876/93285573-23ae1d80-f810-11ea-8dec-a76dbf6464f4.gif)</a>

## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" /></a> <!-- Hamlのロゴ -->
<a><<img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" /></a> <!-- Scssのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774768-d064a980-2fb7-11ea-88ad-4562c59470ae.png" height="65px;" /></a> <!-- jQueryのロゴ -->
<a><img src="https://user-images.githubusercontent.com/67769876/91068711-a0196a80-e66f-11ea-9e03-92d97eef5736.png" height="65px;" /></a> <!-- herokuのロゴ -->



## :globe_with_meridians: 機能紹介
- 新規会員登録・ログインをすると記事投稿が出来ます。また、自分が投稿した記事は編集・削除が可能です。
- 新規会員登録・ログインをすると記事にコメントが出来ます。
- 商品詳細ページからユーザーごとの投稿一覧を確認する事も出来ます。
- ログインしていないユーザーでも記事の閲覧が出来ます。
- 投稿記事の検索が出来ます。あいまい検索も可能です。
- 楽天APIを導入しています。検索ワードを入力すると商品名・価格・商品画像を取得でき、お気に入りの缶詰があればトップページから検索・購入する事が出来ます。

## :globe_with_meridians: 工夫したポイント
- ビューはBootStrapを使用して綺麗に、作業を高速化する事を心がけました。
- 楽天APIを導入しました。これにより他のプラットホームを上手く利用したアプリ制作を心がけました。

## :globe_with_meridians: 課題や今後実装したい機能
- 今回は情報発信の投稿サイトベースに購入機能がついたアプリを作成したが、
  次回制作するアプリはECサイト主体のアプリを作ってみたい。
- 検索機能であいまい検索を実装しているが、複数条件で検索出来る「ransack」を追加実装してみたい。

## :globe_with_meridians: サイトURL紹介
- ユーザー名:kimkim2951
- IPアドレス:https://kozin-app.herokuapp.com/ 

## インストール方法
## :globe_with_meridians: インストール方法
1.このリポジトリを複製<br>
`$ git clone https://github.com/kimkim2951/kozin-app.git`

2.インストールしたリポジトリに移動<br>
`$ cd chat-space`

3.gemをアプリケーションに適用<br>
`$ bundle install`<br>

4.データベースの作成&反映<br>
`$ rails db:create`<br>
`$ rails db:migrate`<br>

5.アプリケーションの起動<br>
`$ rails s`<br>
:point_right:`http://localhost:3000`

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|tweet_id|integer||
|email|string|default:"", null: false|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|text||
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user


