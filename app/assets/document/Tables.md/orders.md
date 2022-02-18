<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

								
| テーブル名 |     |     |     |     |     |     |     |     |     |
| :--------- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| orders     |     |     |     |     |     |     |     |     |     |
|            |     |     |     |     |     |     |     |     |     |

| カラム名         | カラム説明     | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考                                                         |
| :--------------- | :------------- | :-: | :-: | :------- | :------: | :-------------: | :----: | :------ | :----------------------------------------------------------- |
| id               | 注文ID         |  ◯  |     | integer  |    ◯     | ◯              | ◯     |         |                                                              |
| customer_id      | 会員ID         |     |  ◯  | integer  |    ◯     |                |       |         |                                                              |
| zip_code         | 配送先郵便番号 |     |     | string   |    ◯     |                |       |         |                                                              |
| shipping_address | 配送先住所     |     |     | string   |    ◯     |                |       |         |                                                              |
| shipping_name    | 配送先氏名     |     |     | string   |    ◯     |                |       |         |                                                              |
| shipping_cost    | 送料           |     |     | integer  |    ◯     |                |       |         |                                                              |
| amount_billed    | 請求額         |     |     | integer  |    ◯     |                |       |         |                                                              |
| payment_method   | 支払い方法     |     |     | integer  |    ◯     |                |       | 0       | ”0:クレジットカード, 1:銀行振込”                             |
| status           | 受注ステータス |     |     | integer  |    ◯     |                |       | 0       | "0:入金待ち, 1:入金確認, 2:製作中, 3:発送準備中, 4:発送済み" |
| created_at       | 登録日時       |     |     | datetime |    ◯     |                |       | now     |                                                              |
| updated_at       | 更新日時       |     |     | datetime |    ◯     |                |       | now     |                                                              |