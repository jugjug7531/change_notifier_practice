import 'package:flutter/material.dart';
import 'package:change_notifier_practice/font_size_setting/model/font_size_model.dart';
import 'package:provider/provider.dart';

/// スライダー
/// 
/// フォントサイズモデルの正規化フォントサイズを取得&設定する
class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    // 変更をUIに反映させたくはないけど、
    // modelのメソッドやプロパティなどを使用したい場合は、
    // Provider.ofを使用する.

    // フォントサイズモデル取得
    final mydata = Provider.of<FontSizeModel>(context);

    return Slider(
        value: mydata.normalizationSize, onChanged: (value) => mydata.size = value);
  }
}