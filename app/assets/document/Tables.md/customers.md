<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

| テーブル名 |     |     |     |     |     |     |     |     |     |
| :--------- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| customers  |     |     |     |     |     |     |     |     |     |
|            |     |     |     |     |     |     |     |     |     |


| カラム名           | カラム説明     | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考 |
| :----------------- | :------------- | :--: | :--: | :------- | :-------: | :-------------: | :----: | :------ | :--- |
| id                 | 会員ID         | ◯   |     | integer  | ◯        | ◯              | ◯     |         |      |
| last_name          | 姓             |     |     | string   | ◯        |                |       |         |      |
| first_name         | 名             |     |     | string   | ◯        |                |       |         |      |
| last_name_kana     | 姓カナ         |     |     | string   | ◯        |                |       |         |      |
| first_name_kana    | 名カナ         |     |     | string   | ◯        |                |       |         |      |
| email              | メールアドレス |     |     | string   | ◯        |                |       |         |      |
| encrypted_password | パスワード     |     |     | string   | ◯        |                |       |         |      |
| postal_code        | 郵便番号       |     |     | string   | ◯        |                |       |         |      |
| address            | 住所           |     |     | string   | ◯        |                |       |         |      |
| telephone_number   | 電話番号       |     |     | string   | ◯        |                |       |         |      |
| is_deleted         | 退会ステータス |     |     | boolean  | ◯        |                |       | FALSE   |      |
| created_at         | 登録日時       |     |     | datetime | ◯        |                |       | now     |      |
| updated_at         | 更新日時       |     |     | datetime | ◯        |                |       | now     |      |