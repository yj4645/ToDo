# README

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