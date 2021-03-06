<h2>登録〜注文</h2>

- - - -
<br>

| システム | 画面             | やること                                           | 想定結果                                                         | 結果 | 実施不要 |
| :------- | :--------------- | :------------------------------------------------- | :--------------------------------------------------------------- | :--: | :------: |
| ECサイト | トップページ     | 新規登録画面へのリンクを押下する                   | 新規登録画面に遷移する                                           |      |          |
|          | 新規登録画面     | 必要事項を入力して登録ボタンを押下する             | 登録処理後、マイページに遷移する                                 |      |          |
|          |                  | ヘッダーのマイページのリンクを押下する             | マイページに遷移する                                             |      |          |
|          | マイページ       | -                                                  | 登録した内容が表示される                                         |      |          |
|          |                  | 配送先一覧表示ボタンを押下する                     | 配送先一覧画面に遷移する                                         |  -   |   不要   |
|          | 配送先一覧画面   | 各項目を入力し、登録ボタンを押下する               | 登録した内容が表示されている                                     |  -   |   不要   |
|          |                  | ヘッダーの商品一覧のリンクを押下する               | 商品一覧画面に遷移する                                           |      |          |
|          | 商品一覧画面     | 任意の商品画像を押下する                           | 該当商品の詳細画面に遷移する                                     |      |          |
|          | 商品詳細画面     | -                                                  | 商品情報が正しく表示されている                                   |      |          |
|          |                  | 個数を選択し、カートに入れるボタンを押下する       | カート画面に遷移する                                             |      |          |
|          | カート画面       | -                                                  | カートの中身が正しく表示されている                               |      |          |
|          |                  | 買い物を続けるボタンを押下する                     | トップページに遷移する                                           |      |          |
|          | トップページ     | 任意の商品画像を押下する(2商品目)                  | 該当商品の詳細画面に遷移する                                     |      |          |
|          | 商品詳細画面     | -                                                  | 商品情報が正しく表示されている                                   |      |          |
|          |                  | 個数を選択し、カートに入れるボタンを押下する       | カート画面に遷移する                                             |      |          |
|          | カート画面       | -                                                  | カートの中身が正しく表示されている                               |      |          |
|          |                  | 商品の個数を変更し、更新ボタンを押下する           | 合計表示が正しく更新される                                       |      |          |
|          |                  | カートを空にするボタンを押下する                   | カートの中身が空になる                                           |      |          |
|          |                  | -                                                  | 注文情報入力画面に進めない、またはリンクを表示しない             |      |          |
|          |                  | ヘッダーの商品一覧のリンクを押下する               | 商品一覧画面に遷移する                                           |      |          |
|          | 商品一覧画面     | 任意の商品画像を押下する(9, 14で入れたものでもOK)  | 該当商品の詳細画面に遷移する                                     |      |          |
|          | 商品詳細画面     | 個数を選択し、カートに入れるボタンを押下する       | カート画面に遷移する                                             |      |          |
|          | カート画面       | -                                                  | カートの中身が正しく表示されている                               |      |          |
|          |                  | ヘッダーの商品一覧のリンクを押下する               | 商品一覧画面に遷移する                                           |      |          |
|          | 商品一覧画面     | 任意の商品画像を押下する(22で入れたもの以外ならOK) | 該当商品の詳細画面に遷移する                                     |      |          |
|          | 商品詳細画面     | 個数を選択し、カートに入れるボタンを押下する       | カート画面に遷移する                                             |      |          |
|          | カート画面       | -                                                  | カートの中身が正しく表示されている                               |      |          |
|          |                  | 注文情報入力に進むボタンを押下する                 | 注文情報入力画面に遷移する                                       |      |          |
|          | 注文情報入力画面 | 支払方法を選択する                                 | -                                                                |      |          |
|          |                  | 任意の配送先オプションを選択する                   | -                                                                |      |          |
|          |                  | 「確認画面へ進む」を押下する                       | 注文情報確認画面に遷移する                                       |      |          |
|          | 注文情報確認画面 | -                                                  | カート内の商品、合計金額、支払い方法、配送先などが表示されている |      |          |
|          |                  | 確定ボタンを押下する                               | 注文作成処理後、注文完了画面に遷移する                           |      |          |
|          | 注文完了画面     | ヘッダーのカート画面へのリンクを押下する           | カート画面に遷移する                                             |      |          |
|          | カート画面       | -                                                  | カートの中身が空になっている                                     |      |          |
|          |                  | ヘッダーのマイページへのリンクを押下する           | マイページに遷移する                                             |      |          |
|          | マイページ       | 注文履歴一覧へのリンクを押下する                   | 注文履歴一覧画面に遷移する                                       |      |          |
|          | 注文履歴一覧画面 | 先ほどの注文の詳細表示ボタンを押下する             | 該当の注文履歴詳細画面に遷移する                                 |      |          |
|          | 注文履歴詳細画面 | -                                                  | 注文内容が正しく表示されている                                   |      |          |
|          |                  | -                                                  | 注文ステータスが「入金待ち」になっている                         |  -   |   不要   |
|          |                  | ヘッダーのログアウトボタンをクリックする           | ログアウト処理後、トップページに遷移する                         |      |          |
|          | トップページ     | -                                                  | ヘッダーがログイン前の表示に変わっている                         |      |          |