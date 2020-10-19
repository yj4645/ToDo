# README

# アプリケーション名
todo-app-29234

# アプリケーション概要
task管理ができる

# URL
https://todo-app-29234.herokuapp.com/

# テスト用アカウント
アドレス：sample@sample.com
パスワード：yu101010

# 利用方法
新規登録をすると投稿ボタンが出るので、項目を記入すると投稿ができる

# 目指した課題解決
忘れがちなことをメモ代わりとして描いておける。シンプルにわかりやすくした

# 洗い出した要件
| 機能         | 目的                     | 詳細                                        | ストーリー |
| ------------| -------------------------| ------------------------------------------ |
| タスク管理    | メモ代わりにタスク確認できる | 新規投稿した内容が一覧表示される                 | タイトル、本文、日時を入力して投稿するとトップページに一覧表示される|
| ユーザー管理  | 一人一人タスク確認ができる   | 必要な情報を入れると新規登録ができ、ログインもできる| 登録したユーザーしか投稿できない |


# 実装した機能についての説明
https://gyazo.com/cc1ab4fad7dcca784639097b8408a4dd

# 実装予定の機能
タスクの編集、削除機能
ログインユーザーのみに画面表示する機能

# データベース設計
https://app.lucidchart.com/lucidchart/3c01e00f-3f27-4d69-b2b9-6c5d9dbd1967/edit?page=0_0#?folder_id=home&browser=icon


# テーブル設計

## users テーブル

| Column                    | Type   | Options     |
| --------                  | ------ | ----------- |
| nickname                  | string | null: false |
| email                     | string | null: false |
| encrypted_password        | string | null: false |


### Association

- has_many :tasks

## tasks テーブル

| Column                    | Type       | Options     |
| --------                  | ------     | ----------- |
| user                      | references | foreign_key:true |
| title                     | string     | null: false |
| text                      | string     | null: false |
| date_time                 | date       | null: false |


### Association

- belongs_to :user