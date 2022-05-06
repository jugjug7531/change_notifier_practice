import 'dart:developer';

import 'package:flutter/foundation.dart';
/// フォントサイズモデル
/// 
/// 最大フォントサイズ[_maxSize]設定可能
class FontSizeModel with ChangeNotifier {
  double _size = 0.5;

  /// フォントサイズの最大値
  final int _maxSize = 100;

  // getter
  /// 正規化フォントサイズ
  double get normalizationSize => _size;
  /// フォントサイズ
  double get size => _size * _maxSize;
  // setter
  set size(double size) {
    _size = size;
    notifyListeners(); //通知
    debugPrint("[notifyListeners] change size : "+_size.toStringAsFixed(2));
  }
}