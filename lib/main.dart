import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utils/languages.dart';
import 'utils/sharedPrefs_constant.dart';
import 'views/splash_screen.dart';



late SharedPreferences sharedPrefs;
late String selectedLanguageCode;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  sharedPrefs = await SharedPreferences.getInstance();
  selectedLanguageCode = sharedPrefs.getString(SharedPrefsConstants.LANGUAGE_CODE) ?? 'en_US';

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SAROB',
      translations: Languages(),
      locale: Locale(selectedLanguageCode.split('_')[0], selectedLanguageCode.split('_')[1]),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
