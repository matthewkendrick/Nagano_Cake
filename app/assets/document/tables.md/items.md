<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

								
| テーブル名 |     |     |     |     |     |     |     |     |     |
| :--------- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| items      |     |     |     |     |     |     |     |     |     |
|            |     |     |     |     |     |     |     |     |     |								

| カラム名     | カラム説明     | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考 |
| :----------- | :------------- | :--: | :--: | :------- | :-------: | :-------------: | :----: | :------ | :--- |
| id           | 商品ID         | ◯   |     | integer  | ◯        | ◯              | ◯     |         |      |
| genre_id     | ジャンルID     |     | ◯   | integer  | ◯        |                |       |         |      |
| name         | 商品名         |     |     | string   | ◯        |                |       |         |      |
| image_id     | 商品画像ID     |     |     | string   | ◯        |                |       |         |      |
| introduction | 商品説明文     |     |     | text     | ◯        |                |       |         |      |
| price        | 税抜き価格     |     |     | integer  | ◯        |                |       |         |      |
| is_active    | 販売ステータス |     |     | boolean  | ◯        |                |       | TRUE    |      |
| created_at   | 登録日時       |     |     | datetime | ◯        |                |       | now     |      |
| updated_at   | 更新日時       |     |     | datetime | ◯        |                |       | now     |      |