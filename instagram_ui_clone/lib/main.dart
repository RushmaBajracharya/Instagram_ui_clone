import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:instagram_ui_clone/screens/main_pg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI Clone',
      theme: ThemeData.dark(),
      home: const MainPage(),
    );
  }
}
