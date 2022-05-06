import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:change_notifier_practice/font_size_setting/model/font_size_model.dart';
import 'package:change_notifier_practice/font_size_setting/component/slider.dart';

/// フォントサイズ設定UI
/// 
/// 現在設定されているフォントサイズおよび
/// フォントサイズを設定するスライダーを表示する
class FontSizeSettingUI extends StatelessWidget {
  const FontSizeSettingUI({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FontSizeModel(),
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children:[
                  Container(
                    width: 400,
                    height: 150,
                    color:Colors.green
                  ),
                  /*
                    ConsumerがnotifyListeners()からの変更を検知.
                    Textへの値の設定と作り直しを行う.
                  */
                  Consumer<FontSizeModel>(
                    builder: (context, myFontSize, _) => Text(
                    myFontSize.size.toStringAsFixed(2),
                    style: TextStyle(fontSize: myFontSize.size),
                    ),
                  ),
                ]
              ),
              const MySlider(),
            ],
          ),
    );
  }
}