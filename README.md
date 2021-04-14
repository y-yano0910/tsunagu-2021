# アプリケーション名 [NAME]
## 『TSUNAGU』

<br/>

# 概要 [Overview]

このアプリケーションは、購入者（主に、小規模・個人経営の飲食店）と生産者（小規模・個人経営の農家）を繋ぐ**ECサイト型のプラットフォーム**です。<br/>
生産者は生産品などの商品の登録・販売、農園の情報発信、購入者からのフィードバックを得ることなどができます。<br/>
購入者は商品の閲覧、検索、購入、生産者との情報のやり取りなどができます。<br/>

# URL
https://tsunagu-2021.herokuapp.com/
<br/>(まだ未完成です。これから後述した追加機能を実装予定です)

<br/>

# 制作の意義・目的 [Purpose of Production]

### 『飲食店の売上効率のために付加価値を作ることを目的とした発注ニーズを、<br/>生産者にも受注するメリットをもたらすような仕組みを盛り込んで実現すること』

<br/>

# ペルソナ [Persona]

- **”小規模”・”個人経営”の飲食店**

- **主に”小規模”農家・生産者**

<br/>

# ユーザーストーリー(問題提起) [Problem Presentation]

### 飲食店側の視点

- **効率よく売上を上げたい**

  そのためには客単価をあげれば、客数が減ってもお客様一人当たりに対して質の高いサービスが提供できて、かける人件費も少なくて済んで、スタッフ１人あたりの労働生産性も高くなる。

  *では客単価をあげるためにはどうするのか？*

<br/>

- **一つの方法としては、商品に付加価値をつけること**

  *商品に付加価値をつけるとは？*

  その商品を作る上でこだわった材料や特徴のある食材を使っていることや、農家直送なので新鮮なことなど、エンドユーザーであるお客様が魅力に感じる、美味しく感じる、満足度が上がるような価値づくりをすること。

  ***付加価値をつければ商品の単価を上げても、満足度を下げずに、逆に高くすることができる可能性がある。***

<br/>

### 付加価値の高い原材料を発注するときに飲食店側が求めているものは何なのか？

1. **どんな食材の情報があるのか知ることができること**<br/>
まずは食材の情報を知らないと買えないから。どんな食材があり、農家があり、付加価値があるのか。

2. **なるべく多様な品目が選べること**<br/>
色々なメニューに対応させたい、作りたいから。

3. **特徴のある生産物を求めていること**<br/>
魅力のある付加価値づくりのため。

4. **発注ロットが少なくてもいいこと**<br/>
抱えられる在庫数、使用する必要な量は限られているため。

5. **スポット取引ができること**<br/>
発注したい時が季節やおすすめや、コース内容などタイミングやシチュエーションで変わることがあるため。

6. **コストが抑えられること、または予算内で選べる・調整できること**<br/>
仕入れ価格はできれば抑えたい。またはコントロールできる範囲で発注したいから。

<br/>

### 飲食店側が求めていることに対する生産者の視点(デメリット)

1. **注文ロットが少ないと費用対コストが高くなる**<br/>
少ないロットを数多く運ぶことになれば運送コストが高くなるため。

2. **求められる多様な品目を一つの農家で作るとなると作業・栽培効率は悪くなる**<br/>
栽培スペースや作業時間が増えるため。

3. **スポット取引は安定した生産・出荷体制を作れない**<br/>
安定して出荷できなければ生産をしてもロスが増えるため。

***＝＞ これらのことから現実として、小規模の飲食店と、小規模の生産者との直接的な取引による契約は少ない。***

*ではこの生産者のデメリットが克服できる機能があればどうか？*

<br/>

### 生産者のデメリットは何があれば変えられるのか？
### どうすれば飲食店の求めることを叶えられるのか？

1. **運送コストがかかる物流の面**<br/>
→他の小規模生産者と合わせて複合的なやり取りならば、一度の運送コストは少なくて済むのでは？

2. **多様な品目を揃える面**<br/>
→他の農家の色々な生産品があれば、多様な品目は揃えられるのでは？

3. **スポット取引の面**<br/>
→スポット取引に対して何かメリットを打ち出すことができればいいのでは？

<br/>

### 仮説
1. ***複数の生産者の生産物を一度に配送できる物流システム****が確保できれば解決できそう*

2. ***複数の農家が登録して生産物を販売することが出来る直売所のようなプラットフォーム****があれば解決できそう*

3. *スポット取引だったとしても、<br/>こういった*
***プラットフォームがインターネット上にあり、多数の飲食店が目にする機会を増やすこと***
*ができれば*<br/>
   - *複数の飲食店からの注文によって安定的な生産に繋げやすくなる。さらに販路の拡大に繋げることが出来る可能性が高くなる。*

   - *規格外生産物が多くなってしまった時でも価格を安くしたり、ロット販売で飲食店に販売できる。*

   - *どんな飲食店がどんな商品を買っているのか把握しやすく、また直接感想を聞くことができてフィードバックが得られる。*

<br/>

### 生産者のメリットまとめ

1. **販路を拡大しやすくなる**<br/>
多数の飲食店に知ってもらえる機会が増える。<br/>
生産物を試してもらえる。よければ直接契約や安定的な取引へつなげることが出来る。

2. **利益率の向上**<br/>
生産者自身が価格決定権を持つことが出来る。<br/>
規格外生産物を売ることが出来るので、廃棄ロスが少なくなる。<br/>
→ 市場では規格が決まっていて、価格もある程度決まっているため。<br/>
（規格外生産物の廃棄ロスも重要な問題としても存在するため。）

3. **飲食店など市場のニーズを把握できる**<br/>
フィードバックが得られる。<br/>
そのフィードバックから求められている新しい規格や生産物にチャレンジできる。<br/>
チャレンジしたことを知ってもらえる、試してもらえる、またフィードバックがもらえる。<br/>
生産物のPRやブランディングができるようになる。<br/>
→ 生産者は飲食店と直接つながる機会が少なく、情報を得る機会が少ないため。

<br/>

### 飲食店側のニーズと生産者側のメリットを繋ぐためにはどういう存在が必要なのか？
1. **情報を発信・受信できる存在**

2. **注文の受発注の仕組みを持った存在**

3. **出荷・配達の物流を担う存在**

4. **代金を精算してくれる存在**

<br/>

# 要件定義 [Requirement Definition]

### これらの課題を解決できる機能は何か？
（現実の物流システムの問題について今回は仮置きするため、1,2,4の存在についての機能）

**飲食店側**

- 生産品の一覧機能<br/>
（生産者が登録した商品を閲覧できる）
- 検索機能<br/>
（複数条件で目的の商品を絞り込めるようにする）
- 発注機能<br/>
（買い物カゴ機能→個数増減変更・削除、合計価格表示、注文の確定）
- お気に入り登録<br/>
（気に入った商品と生産者を保存して一覧にできる）
- チャット機能<br/>
（購入前の質問や購入後の感想を伝えることが出来る）
- クレジットカードの登録機能<br/>
（決済に備えて、支払い情報の登録ができるようにする）
- 発注確定の確認メール送信機能<br/>
（登録メールアドレスに送信される）
- 発注情報の履歴<br/>
（発注の時系列順の一覧と詳細が見られるようにする）

**生産者側**

- 商品の登録機能<br/>
（写真や説明などで商品の特徴を伝えられるようにする）
- 登録商品の一覧ページ<br/>
（登録した商品の確認、編集、削除）
- 農家の情報発信ページ<br/>
（メインの生産物やこだわっていること、チャレンジしていること、PRしたいことを登録、編集できる）
- チャット機能<br/>
（飲食店からの質問や感想によってフィードバックを受けられる）
- 受注の確認メール送信機能<br/>
（登録メールアドレスに送信される）
- 受注情報の履歴<br/>
（発注した飲食店の把握。受注の時系列順の一覧と詳細）

<br/>

# DEMO
## 1-1. 共通ページ
![TSUNAGUトップページ](https://user-images.githubusercontent.com/79304012/114545835-6a290500-9c97-11eb-826b-620c15b0a9a4.jpeg)

## 2-1.生産者の新規登録
![生産者新規登録](https://user-images.githubusercontent.com/79304012/114539266-495cb180-9c8f-11eb-9e46-7ad81dbcd5bd.png)

## 2-2.生産者のログイン
![生産者ログインページ](https://user-images.githubusercontent.com/79304012/114539652-a9535800-9c8f-11eb-9790-13357d624350.png)

## 2-3.生産者のマイページ
![生産者マイページ](https://user-images.githubusercontent.com/79304012/114546074-b70cdb80-9c97-11eb-84f2-3f9bce24c2f4.png)

## 2-4.生産者の商品登録
![生産者の商品登録](https://user-images.githubusercontent.com/79304012/114546935-b759a680-9c98-11eb-9395-dee6dad53dbe.png)

## 2-5.生産者の商品詳細
![生産者の商品詳細](https://user-images.githubusercontent.com/79304012/114546406-12d76480-9c98-11eb-882c-43506df41bd0.png)

## 2-6.生産者の商品編集
![生産者の商品編集](https://user-images.githubusercontent.com/79304012/114546651-60ec6800-9c98-11eb-96a6-cc7fde006807.png)

## 3-1.購入者の新規登録
![購入者の新規登録](https://user-images.githubusercontent.com/79304012/114547357-4ff02680-9c99-11eb-8436-69783f902cd2.png)

## 3-2.購入者のログイン
![購入者のログイン](https://user-images.githubusercontent.com/79304012/114547656-a8272880-9c99-11eb-80ad-f4a51e40efac.png)

## 3-3.購入者側の商品一覧
![購入者の商品一覧](https://user-images.githubusercontent.com/79304012/114547943-0f44dd00-9c9a-11eb-868e-ec182a9dd031.jpeg)

## 3-4.購入者側の検索結果一覧
![購入者側の検索結果一覧](https://user-images.githubusercontent.com/79304012/114548230-71054700-9c9a-11eb-97ec-196d1d87e71f.jpeg)

## 3-5.購入者側の商品詳細
![購入者側の商品詳細](https://user-images.githubusercontent.com/79304012/114548429-b45fb580-9c9a-11eb-967d-bcd634f4927d.png)

<br/>

# 実装済みの内容 [Implemented]
**飲食店側**

- 生産品の一覧機能<br/>
- 検索機能<br/>

**生産者側**

- 商品の登録機能<br/>
- 登録商品の一覧ページ<br/>

<br/>

# これから実装予定の内容 [Scheduled to be Implemented]
**飲食店側**
- 発注機能<br/>
（買い物カゴ機能→個数増減変更・削除、合計価格表示、注文の確定）
- お気に入り登録<br/>
（気に入った商品と生産者を保存して一覧にできる）
- チャット機能<br/>
（購入前の質問や購入後の感想を伝えることが出来る）
- クレジットカードの登録機能<br/>
（決済に備えて、支払い情報の登録ができるようにする）
- 発注確定の確認メール送信機能<br/>
（登録メールアドレスに送信される）
- 発注情報の履歴<br/>
（発注の時系列順の一覧と詳細が見られるようにする）

**生産者側**
- 農家の情報発信ページ<br/>
（メインの生産物やこだわっていること、チャレンジしていること、PRしたいことを登録、編集できる）
- チャット機能<br/>
（飲食店からの質問や感想によってフィードバックを受けられる）
- 受注の確認メール送信機能<br/>
（登録メールアドレスに送信される）
- 受注情報の履歴<br/>
（発注した飲食店の把握。受注の時系列順の一覧と詳細）

**上記必須機能以外の構想**
- 共通ページにおいて、生産者向けと購入者向けの説明ページの作成とリンクボタンの設置<br/>
（利用者がアプリケーションの導入を検討しやすくするため）
- SNS認証を用いたログイン機能
（ユーザーの利便性を高めるため）
- JavaScriptを用いて、非同期通信を用いたボタンやアイコンからリンクのリスト表示と操作<br/>
（ユーザーの使いやすさを高めるため）
- 端末によって画面レイアウトを切り替える
（利用状況によって見やすくするため）

<br/>

# DB設計 [Database Design]
**※現在の実装段階までのDB設計**

## customersテーブル
| Column             | Type               | Options                   |
| ------------------ |------------------- | ------------------------- |
| company_name       | string             | null: false               |
| email              | string             | null: false, unique: true |
| encrypted_password | string             | null: false               |
| customer_name      | string             | null: false               |
| responsible_person | string             | null: false               |

### Association
- has_many :producers, through: :followings
- has_many :followings
- has_one :cart
- has_many :orders
- has_one :shipping
- accepts_nested_attributes_for :shipping


## shippingsテーブル
| Column        | Type       | Options                        |
| ------------- |----------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| municipality  | string     | null: false                    |
| house_number  | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    |
| customer      | references | null: false, foreign_key: true |

### Association
- belongs_to :customer


## producersテーブル
| Column              | Type               | Options                   |
| ------------------- | -------------------| ------------------------- |
| farm_name           | string             | null: false               |
| email               | string             | null: false, unique: true |
| encrypted_password  | string             | null: false               |
| category_id         | integer            | null: false               |
| main_product_id     | integer            | null: false               |
| farm_characteristic | text               | null: false               |

### Association
- has_many :customers, through: :followings
- has_many :followings
- has_many :products
- has_one :address
- accepts_nested_attributes_for :address
- belongs_to :category
- belongs_to :main_product


## addressesテーブル
| Column        | Type       | Options                        |
| ------------- |----------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| municipality  | string     | null: false                    |
| house_number  | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    |
| producer      | references | null: false, foreign_key: true |

### Association
- belongs_to :producer
- belongs_to :prefecture


## followingsテーブル
| Column        | Type       | Options                        |
| ------------- |----------- | ------------------------------ |
| customer      | references | null: false, foreign_key: true |
| producer      | references | null: false, foreign_key: true |

### Association
- belongs_to :producer
- belongs_to :customer


## productsテーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| price            | integer    | null: false                    |
| capacity_id      | integer    | null: false                    |
| main_product_id  | integer    | null: false                    |
| features         | text       | null: false                    |
| producer         | references | null: false, foreign_key: true |

### Association
- belongs_to :producer
- belongs_to :customer
- has_many :carts, through: items
- has_many :items
- has_one_attached :image
- belongs_to :capacity
- belongs_to :main_product


## cartsテーブル
| Column        | Type       | Options                        |
| ------------- |----------- | ------------------------------ |
| customer      | references | null: false, foreign_key: true |

### Association
- belongs_to :customers
- has_many :products, through: items
- has_many :items


## itemsテーブル
| Column        | Type       | Options                        |
| ------------- |----------- | ------------------------------ |
| product       | references | null: false, foreign_key: true |
| cart          | references | null: false, foreign_key: true |
| order         | references | null: false, foreign_key: true |

### Association
- belongs_to :product
- belongs_to :cart
- belongs_to :order


## ordersテーブル
| Column        | Type       | Options                        |
| ------------- |----------- | ------------------------------ |
| custmer       | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association
- belongs_to :customer
- has_many :products, through: items
- has_many :carts, through: items
- has_many :items


<br/>

# 使用技術(開発環境) [Development Environment]
**※現在の実装段階での開発環境**

### バックエンド
---
Ruby, Ruby on Rails
### フロントエンド
---
HTML, CSS 
### データベース
---
MySQL, SequelPro
### インフラ
---

### Webサーバ（本番環境）
---

### アプリケーションサーバ(本番環境)
---

### ソース管理
---
GitHub, GitHubDesktop
### テスト
---
RSpec
### エディタ
---
VSCode
