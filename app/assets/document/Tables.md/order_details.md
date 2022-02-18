<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

								
| テーブル名    |     |     |     |     |     |     |     |     |     |
| :------------ | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| order_details |     |     |     |     |     |     |     |     |     |
|               |     |     |     |     |     |     |     |     |     |

| カラム名          | カラム説明     | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考                                           |
| :---------------- | :------------- | :--: | :--: | :------- | :-------: | :-------------: | :----: | :------ | :--------------------------------------------- |
| id                | 注文明細ID     | ◯   |     | integer  | ◯        | ◯              | ◯     |         |                                                |
| order_id          | 注文ID         |     | ◯   | integer  | ◯        |                |       |         |                                                |
| item_id           | 商品ID         |     | ◯   | integer  | ◯        |                |       |         |                                                |
| purchase_price    | 購入時価格     |     |     | integer  | ◯        |                |       |         |                                                |
| amount            | 数量           |     |     | integer  | ◯        |                |       |         |                                                |
| production_status | 製作ステータス |     |     | integer  | ◯        |                |       | 0       | "0:製作不可, 1:製作待ち, 2:製作中, 3:製作完了" |
| created_at        | 登録日時       |     |     | datetime | ◯        |                |       | now     |                                                |
| updated_at        | 作成日時       |     |     | datetime | ◯        |                |       | now     |                                                |