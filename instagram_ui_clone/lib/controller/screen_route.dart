import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_ui_clone/controller/route_controller.dart';
import 'package:instagram_ui_clone/screens/add_post_screen.dart';
import 'package:instagram_ui_clone/screens/home_screen.dart';
import 'package:instagram_ui_clone/screens/profile_screen.dart';
import 'package:instagram_ui_clone/screens/reels_screen.dart';
import 'package:instagram_ui_clone/screens/search_screen.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final RouteController routeController = Get.put(RouteController());
    return Obx(() {
      switch (routeController.activeRoute.value) {
        case "home":
          return const HomeScreen();
        case "search":
          return const SearchScreen();
        case "add_post":
          return const AddPostScreen();
        case "reels":
          return const ReelScreen();
        case "profile":
          return const ProfileScreen();
        default:
          return Container();
      }
    });
  }
}
