# テーブル設計
# README

## users テーブル

| Column                  | Type   | Options                  |
| ------------------      | ------ | -----------              |
| nickname                | string | null: false              |
| email                   | string | null: false, unique:true |
| encrypted_password      | string | null: false              |
| family_name             | string | null: false              |
| first_name              | string | null: false              |
| birth_day               | date   | null: false              |
| admin                   | boolean| default: false           |管理者権限

### Association
has_many :messages
has_many :galleries


## messages テーブル

| Column               | Type       | Options                              |
| ------               | ------     | -------------------------------      |
| message_text         | string     | null: false                          |
| user                 | references | null: null: false, foreign_key: true |

### Association
belongs_to :user

## galleries テーブル

| Column               | Type       | Options                              |
| ------               | ------     | -------------------------------      |
| user                 | references | null: null: false, foreign_key: true |
| message_text         | string     |                                      |

### Association
belongs_to :user


