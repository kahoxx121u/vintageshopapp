# README

## usersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| email   | string | null: false, unique: true |
| encrypted_password  | string | null: false |

### Association
- has_many :orders

## itemsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| item   | string | null: false |
| text  | text | null: false |
| category_id  | integer | null: false |
| price  | integer | null: false |

### Association
- has_one :order

## paymentsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| firstname   | string | null: false |
| surname  | string | null: false |
| postal  | string | null: false |
| prefecture_id  | integer | null: false |
| city  | string | null: false |
| address  | string | null: false|
| telephone  | string | null: false |
| order  | references | null: false, foreign_key: true |

### Association
- belongs_to :order
