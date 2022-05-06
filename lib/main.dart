import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:change_notifier_practice/font_size_setting/model/font_size_model.dart';
import 'package:change_notifier_practice/font_size_setting/component/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State管理練習',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ChangeNotifierでState管理'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => FontSizeModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Column(
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
                  1. SliderはProvider.ofでMyDataにアクセスし、値の取得や設定を行う
                  2. MyDataのsetterの中で、notifyListenersでリスナーに変更を通知する
                  3. Consumerが変更を検知して、Textへの値の設定と作り直しを行う
                  */
                  Consumer<FontSizeModel>(
                    builder: (context, myFontSize, _) => Text(
                    myFontSize.size.toStringAsFixed(2),
                    style: TextStyle(fontSize: myFontSize.size),
                    ),
                  ),
                ]
              ),
              MySlider(),
            ],
          )),
    );
  }
}
