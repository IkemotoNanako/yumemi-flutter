# 株式会社ゆめみ Flutterエンジニア コーディング試験

|  検索結果一覧(Light)  |  検索結果一覧(Dark)  |
| ---- | ---- |
| ![スマホ](https://user-images.githubusercontent.com/66543967/217197306-164b6f8f-dc27-447c-93dc-5972287f691e.PNG) |![ダークホーム](https://user-images.githubusercontent.com/66543967/217197342-194e0de6-a5bf-4fe1-a7c9-e8267652068c.PNG) |
|  詳細(Light)  |  詳細(Dark)  |
| ---- | ---- |
| ![詳細](https://user-images.githubusercontent.com/66543967/216837208-03b66c27-34c4-45ab-b55f-faa50d5ea58e.PNG) | ![ダーク詳細](https://user-images.githubusercontent.com/66543967/216837214-576d129d-76c9-48e2-9965-cdfa13f948c7.PNG) |

|  検索結果無し  |  エラー  |
| ---- | ---- |
|  ![検索結果0](https://user-images.githubusercontent.com/66543967/216837283-8116a783-74aa-4908-b8bc-ad48dbbe50dd.PNG)  |  ![エラー](https://user-images.githubusercontent.com/66543967/216837295-92687050-72db-4cb2-b448-d6d37a8f92c7.PNG) |

|  検索結果一覧(デスクトップ)  |  詳細(デスクトップ)  |
| ---- | ---- |
| ![Web詳細](https://user-images.githubusercontent.com/66543967/217197378-fb2b661c-7bd8-4324-9604-d92a2a800728.PNG) |  ![Web詳細](https://user-images.githubusercontent.com/66543967/216837347-c65db75e-04f2-4e5a-b1c4-e8fda94d7b51.PNG)|

動画

https://user-images.githubusercontent.com/66543967/217198595-595cb6ec-eafd-452c-966e-97890f76d092.mp4


# 技術スタック
- アプリの機能
  - GitHub リポジトリの検索
  - 詳細表示
  - GitHub レポジトリのサイトへのリンク
- ダークモード対応
- [intl](https://pub.dev/packages/intl) での多言語対応(日本語/英語)
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) を使ったアプリアイコン
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) を使ったスプラッシュ画面
- [flutter_staggered_animationsw](https://pub.dev/packages/flutter_staggered_animations) を使ったアニメーション
- サポートするプラットフォーム
  - iOS / Android / Web

# ビルド方法

ソースコードをclone
```
git clone https://github.com/IkemotoNanako/yumemi-flutter.git
```

pubspec.yamlファイルに記述されているパッケージをダウンロード・インストール
```
flutter pub get
```

多言語対応のためのファイルを生成
```
flutter gen-l10n
```


# フォルダ構成
```
├── lib
│   ├── main.dart                            アプリのエントリーポイント
│   ├── class                                全体で使うクラス
│   ├── constant                             変わらない値
│   ├── provider                             Providerを管理
│   ├── service                              API周り
│   ├── l10n                                 多言語対応
│   └── ui                                   見た目
│       └── page　　　　　　　　　　　　　　　ページ単位
│           ├── page.dart                    pageのdartファイル
│           └── function                     機能単位　　　　　　　　 
│ 
```


# アピールポイント

- issue とproject を用いて複数人での開発時を意識してみました
- デザインをかわいらしくしました
- ダークモードに対応しました
- 多言語対応しました
- アニメーションを入れることで飽きが来ないようにしました
- アプリらしくスプラッシュ画面やアイコンを設定しました
- 様々な大きさの端末で崩れないUI にしました
- GitHub のページに飛ぶ機能を付け加えました
- プログラミング言語を指定して検索できるようにしました
