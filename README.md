# README
<h1 align="center">缶詰投稿アプリ（缶交大使）</h1>

## アプリ概要
- 缶詰の投稿アプリです。自分のお気に入りの缶詰を投稿して情報をシェアする事が出来ます。
## コンセプト
- 情報発信のアプリケーションを作ろうと考えました。
- スーパーに並んでいる良く見かける商品意外にも、世の中にはこだわり品で美味しい商品がたくさんあります。
- 「良い商品」には日の目をみて欲しい、実際に使ったユーザー感想を共有して欲しい、最終的には商品に込めた「想い」が伝わると嬉しいと考えこのアプリケーションを作りました。

- 作成期間 7/25〜8/3 (10日間)
[![Image from Gyazo](https://i.gyazo.com/72ea2ccb18baa5b7eb6463e3eea4a2b9.gif)](https://gyazo.com/72ea2ccb18baa5b7eb6463e3eea4a2b9)


## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" /></a> <!-- Hamlのロゴ -->
<a><<img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" /></a> <!-- Scssのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774768-d064a980-2fb7-11ea-88ad-4562c59470ae.png" height="65px;" /></a> <!-- jQueryのロゴ -->


## 機能紹介
- 新規会員登録・ログインをすると記事投稿が出来ます。また、自分が投稿した記事は編集・削除が可能です。
- 新規会員登録・ログインをすると記事にコメントが出来ます。
- 商品詳細ページからユーザーごとの投稿一覧を確認する事も出来ます。
- ログインしていないユーザーでも記事の閲覧が出来ます。
- 投稿記事の検索が出来ます。あいまい検索も可能です。
- 楽天APIを導入しています。検索ワードを入力すると商品名・価格・商品画像を取得でき、お気に入りの缶詰があればトップページから検索・購入する事が出来ます。

## サイトURL紹介
- ユーザー名:kimkim2951
- IPアドレス:https://kozin-app.herokuapp.com/ 

## インストール方法
1.このリポジトリを複製<br>
`$ git clone https://github.com/kimkim2951/git-app

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
