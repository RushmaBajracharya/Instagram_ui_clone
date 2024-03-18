import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/controller/screen_route.dart';
import 'package:instagram_ui_clone/widgets/bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScreenRoute(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
