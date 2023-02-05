# 株式会社ゆめみ Flutterエンジニア コーディング試験

|  検索結果一覧(Light)  |  検索結果一覧(Dark)  |
| ---- | ---- |
|![スマホ](https://user-images.githubusercontent.com/66543967/216836928-ad378161-fb97-4510-bf8f-f257e7fd6027.PNG)  |![ダークホーム](https://user-images.githubusercontent.com/66543967/216836933-0b4d0496-0bbd-4a5f-9647-e1734602bc9d.PNG)  |
|  詳細(Light)  |  詳細(Dark)  |
| ---- | ---- |
| ![詳細](https://user-images.githubusercontent.com/66543967/216837208-03b66c27-34c4-45ab-b55f-faa50d5ea58e.PNG) | ![ダーク詳細](https://user-images.githubusercontent.com/66543967/216837214-576d129d-76c9-48e2-9965-cdfa13f948c7.PNG) |

|  検索結果無し  |  エラー  |
| ---- | ---- |
|  ![検索結果0](https://user-images.githubusercontent.com/66543967/216837283-8116a783-74aa-4908-b8bc-ad48dbbe50dd.PNG)  |  ![エラー](https://user-images.githubusercontent.com/66543967/216837295-92687050-72db-4cb2-b448-d6d37a8f92c7.PNG) |

|  検索結果一覧(デスクトップ)  |  詳細(デスクトップ)  |
| ---- | ---- |
|  ![ウェブ](https://user-images.githubusercontent.com/66543967/216837318-f7118493-cdb4-433a-b8f1-dbe3668551e3.PNG)|  ![Web詳細](https://user-images.githubusercontent.com/66543967/216837347-c65db75e-04f2-4e5a-b1c4-e8fda94d7b51.PNG)|

動画

https://user-images.githubusercontent.com/66543967/216837666-00453f30-a209-4749-9c62-6522549e7d68.mp4

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

# フォルダ構成
```
├── lib
│   ├── main.dart                            アプリのエントリーポイント
│   ├── class                                全体で使うクラス
│   ├── provider                             Providerを管理
│   ├── service                              API周り
│   ├── l10n                                 多言語対応
│   └── ui                                   見た目
│       └── page　　　　　　　　　　　　　　　ページ単位
│           ├── page.dart                    pageのdartファイル
│           └── widget      　　　　　　　　  各種UIWidget
│ 
```
