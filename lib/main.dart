import 'package:flutter/material.dart';
import 'package:myapp/Homepage.dart';
import 'package:myapp/widgets/ChatPage.dart';
import 'package:myapp/widgets/Settingspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(color: Color(0xff075e55)),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0))
      ),
      routes: {
        "/":(context) => Homepage(),
        "settingpage":(context) => settingpage(),
        "ChatPage":(context) => ChatPage(),
      },
      
    );
  }
}


