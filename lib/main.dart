import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:profileactivity/Authentication/auth.dart';

import 'Models/user_pref.dart';
import 'UI/mode.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'User Profile';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: AuthWidget(),
        ),
      ),
    );
  }
}
