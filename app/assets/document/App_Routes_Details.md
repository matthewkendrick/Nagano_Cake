<h2>アプリケーション詳細設計書</h2>

- - - -
<br>

| コントローラ         | アクション  |  HTTPメソッド | URL                       | 目的                                                   |
| :------------------- | :---------- | :----------- | :------------------------ | :----------------------------------------------------- |
| public/homes         | top         | GET          | /                         | トップページ                                           |
|                      | about       | GET          | /about                    | アバウトページ                                         |
| public/items         | index       | GET          | /items                    | 商品一覧                                               |
|                      | show        | GET          | /items/:id                | 商品詳細                                               |
| public/registrations | new         | GET          | /customers/sign_up        | 顧客の会員登録画面                                     |
|                      | create      | POST         | /customers                | 顧客の会員登録                                         |
| public/sessions      | new         | GET          | /customers/sign_in        | 顧客ログイン画面                                       |
|                      | create      | POST         | /customers/sign_in        | 顧客ログイン                                           |
|                      | destroy     | DELETE       | /customers/sign_out       | 顧客ログアウト                                         |
| public/customers     | show        | GET          | /customers                | 顧客のマイページ                                       |
|                      | edit        | GET          | /customers/:id/edit       | 顧客の登録情報編集画面                                 |
|                      | update      | PATCH        | /customers/:id            | 顧客の登録情報更新                                     |
|                      | quit        | GET          | /customers/quit           | 顧客の退会確認画面                                     |
|                      | out         | PATCH        | /customers/out            | 顧客の退会処理(ステータスの更新)                       |
| public/cart_items    | index       | GET          | /cart_items               | カート内商品一覧画面(数量変更・カート削除の要素を含む) |
|                      | update      | PATCH        | /cart_items/:id           | カート内商品データ更新                                 |
|                      | destroy     | DELETE       | /cart_items/:id           | カート内商品データ削除(一商品)                         |
|                      | destroy_all | DELETE       | /cart_items/destroy_all   | カート内商品データ削除(全て)                           |
|                      | create      | POST         | /cart_items               | カート内商品データ追加                                 |
| public/orders        | new         | GET          | /orders/new               | 注文情報入力画面(支払方法・配送先の選択)               |
|                      | log         | GET          | /orders/log               | 注文情報確認画面                                       |
|                      | thanks      | GET          | /orders/thanks            | 注文完了画面                                           |
|                      | create      | POST         | /orders                   | 注文確定処理                                           |
|                      | index       | GET          | /orders                   | 注文履歴画面                                           |
|                      | show        | GET          | /orders/:id               | 注文履歴詳細画面                                       |
| public/addresses     | index       | GET          | /addresses                | 配送先登録/一覧画面                                    |
|                      | edit        | GET          | /addresses/:id/edit       | 配送先編集画面                                         |
|                      | create      | POST         | /addresses                | 配送先の登録                                           |
|                      | update      | PATCH        | /addresses/:id            | 配送先の更新                                           |
|                      | destroy     | DELETE       | /addresses/:id            | 配送先の削除                                           |
| admin/sessions       | new         | GET          | /admin/sign_in            | 管理者ログイン画面                                     |
|                      | create      | POST         | /admin/sign_in            | 管理者ログイン                                         |
|                      | destroy     | DELETE       | /admin/sign_out           | 管理者ログアウト                                       |
| admin/homes          | top         | GET          | /admin                    | 管理者トップページ(注文履歴一覧)                       |
| admin/items          | index       | GET          | /admin/items              | 商品一覧                                               |
|                      | new         | GET          | /admin/items/new          | 商品新規登録画面                                       |
|                      | create      | POST         | /admin/items              | 商品情報の新規登録                                     |
|                      | show        | GET          | /admin/items/:id          | 商品詳細画面                                           |
|                      | edit        | GET          | /admin/items/:id/edit     | 商品編集画面                                           |
|                      | update      | PATCH        | /admin/items/:id          | 商品情報の更新                                         |
| admin/genres         | index       | GET          | /admin/genres             | ジャンル管理画面(一覧・追加を兼ねる)                   |
|                      | create      | POST         | /admin/genres             | ジャンルデータ登録                                     |
|                      | edit        | GET          | /admin/genres/:id/edit    | ジャンル編集画面                                       |
|                      | update      | PATCH        | /admin/genres/:id         | ジャンルデータ更新                                     |
| admin/customers      | index       | GET          | /admin/customers          | 顧客一覧画面                                           |
|                      | show        | GET          | /admin/customers/:id      | 顧客詳細画面                                           |
|                      | edit        | GET          | /admin/customers/:id/edit | 顧客編集画面                                           |
|                      | update      | PATCH        | /admin/customers/:id      | 顧客情報の更新                                         |
| admin/orders         | show        | GET          | /admin/orders/:id         | 注文詳細画面(ステータス編集を兼ねる)                   |
|                      | update      | PATCH        | /admin/orders/:id         | 注文ステータス・着手状況の更新                         |
| admin/order_details  | update      | PATCH        | /admin/order_details/:id  | 製作ステータスの更新                                   |