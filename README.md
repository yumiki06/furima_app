# FURIMA DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|family_name|string	null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|string|null: false|
|birth_month|string|null: false|
|birth_day|string|null: false|
|password|string|null: false|
|email|string|null: false, unique: true|
### Association
- has_many :products
- has_many :orders

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration
## productテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|references|null: false, FK: true|
|shipping_id|references|null: false, FK: true|
|brand_id|references|null: false, FK: true|
|seller_user_id|references|null: false, FK: true|
|name|string|null: false|
|text|text|null: false|
|condition|integer|null: false|
|price|integer|null: false|
|trading_status|integer|null: false|
|completed_at|datetime||
### Association
- belongs_to :user
- belongs_to :categories
- belongs_to :brands
- has_one :shipping
- has_one :order
- has_many :product_images

* Database creation
## orderテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_user_id|references|null: false, FK: true|
|product_id|references|null: false, FK: true|
### Association
- belongs_to :user
- belongs_to :product

* Database initialization
## product_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|references|null: false, FK: true|
|image_url|string|null: false|
### Association
- belongs_to :product

* How to run the test suite
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|path|text|null: false|
|name|string|null: false|
|ancestry|string||	
### Association
- has_many :brands
- has_many :products
- has_ancestry

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
