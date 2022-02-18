<h2>データベース名 : &nbsp;&nbsp;&nbsp; nagano_cake</h2>

- - - -
<br>

								
| テーブル名 |     |     |     |     |     |     |     |     |     |
| :--------- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| admins     |     |     |     |     |     |     |     |     |     |
|            |     |     |     |     |     |     |     |     |     |

| カラム名           | カラム説明     | PK  | FK  | データ型 | NOT NULL | AUTO INCREMENT | INDEX | DEFAULT | 備考 |
| :----------------- | :------------- | :-: | :-: | :------- | :------: | :------------: | :---: | :------ | :--- |
| id                 | 管理者ID       |  ◯  |     | integer  |    ◯     |       ◯        |   ◯   |         |      |
| email              | メールアドレス |     |     | string   |    ◯     |                |       |         |      |
| encrypted_password | パスワード     |     |     | string   |    ◯     |                |       |         |      |
| created_at         | 登録日時       |     |     | datetime |    ◯     |                |       | now     |      |
| updated_at         | 更新日時       |     |     | datetime |    ◯     |                |       | now     |      |