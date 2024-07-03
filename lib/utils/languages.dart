import 'dart:ui';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello',
      'world': 'World',
    },
    'bn_BD': {
      'hello': 'হ্যালো',
      'world': 'বিশ্ব',
    },
  };
}