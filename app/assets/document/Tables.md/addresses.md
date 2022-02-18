<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

| テーブル名 |     |     |     |     |     |     |     |     |     |
| :--------- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| addresses  |     |     |     |     |     |     |     |     |     |
|            |     |     |     |     |     |     |     |     |     |

| カラム名    | カラム説明 | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考 |
| :---------- | :--------- | :-: | :-: | :------- | :------: | :------------: | :---: | :------ | :--- |
| id          | 配送先ID   |  ◯  |     | integer  |    ◯     |       ◯        |   ◯   |         |      |
| customer_id | 会員ID     |     |  ◯  | integer  |    ◯     |                |       |         |      |
| name        | 宛名       |     |     | string   |    ◯     |                |       |         |      |
| postal_code | 郵便番号   |     |     | string   |    ◯     |                |       |         |      |
| address     | 住所       |     |     | string   |    ◯     |                |       |         |      |
| created_at  | 登録日時   |     |     | datetime |    ◯     |                |       | now     |      |
| updated_at  | 更新日時   |     |     | datetime |    ◯     |                |       | now     |      |