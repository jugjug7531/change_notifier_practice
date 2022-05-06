import 'package:flutter/material.dart';
import 'package:change_notifier_practice/font_size_setting/ui/font_size_setting_ui.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

@override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("StatefulWidgetを使わずに状態管理する"),
              FontSizeSettingUI()
            ]
          )
    );
  }
}
