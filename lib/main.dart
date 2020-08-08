import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/screens/home_screen.dart';
import 'package:provider_demo/services/theme_notifier.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    print('build of MyApp called');

    //
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

      //set themes
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: context.watch<ThemeNotifier>().themeMode,
    );
  }
}
