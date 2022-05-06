# change_notifier_practice

## 概要
Provider+ChangeNotifierを利用して、Statefulwidgetを使わない状態管理の練習をする.

## 動作例
https://jugjug7531.github.io/change_notifier_practice/

## 処理の大まかな流れ
1. MySliderクラスはProvider.ofでFontSizeModelクラスにアクセスし、値の取得や設定を行う
2. FontSizeModelクラスのsetterの中で、notifyListeners()でリスナーに変更を通知する
3. ConsumerがnotifyListeners()からの変更通知を検知して、Textへの値の設定と作り直しを行う

## 用語
- Consumer
    - notifyされた際、再ビルドの対象を絞るためのWidget

## 参考サイト
- [FlutterのnotifyListenersとChangeNotifierProviderを整理する - Qiita](https://qiita.com/kazutxt/items/e6e84957f92aafc472b4)  
- [flutterの最もしっくりくるState管理法 - Provider + ChangeNotifierの使い方 | Tesshu's Blog](https://tesshus-blog.netlify.app/flutter-change-notifier/)