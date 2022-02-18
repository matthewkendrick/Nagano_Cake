<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

								
| テーブル名 |     |     |     |     |     |     |     |     |     |
| :--------- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| cart_items |     |     |     |     |     |     |     |     |     |
|            |     |     |     |     |     |     |     |     |     |


| カラム名    | カラム説明     | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考 |
| :---------- | :------------- | :-: | :-: | :------- | :------: | :------------: | :---: | :------ | :--- |
| id          | カート内商品ID |  ◯  |     | integer  |    ◯     |       ◯        |   ◯   |         |      |
| item_id     | 商品ID         |     |  ◯  | integer  |    ◯     |                |       |         |      |
| customer_id | 会員ID         |     |  ◯  | integer  |    ◯     |                |       |         |      |
| amount      | 数量           |     |     | integer  |    ◯     |                |       |         |      |
| created_at  | 作成日時       |     |     | datetime |    ◯     |                |       | now     |      |
| updated_at  | 更新日時       |     |     | datetime |    ◯     |                |       | now     |      |