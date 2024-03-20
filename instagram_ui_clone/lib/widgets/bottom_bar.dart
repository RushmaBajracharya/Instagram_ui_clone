import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_ui_clone/controller/route_controller.dart';
import 'package:instagram_ui_clone/utils/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final RouteController routeController = Get.put(RouteController());
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.barColor,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                routeController.selectPage("home");
              },
              child: const Icon(
                Icons.home,
                size: 30,
              )),
          GestureDetector(
              onTap: () {
                routeController.selectPage("search");
              },
              child: const Icon(
                Icons.search,
                size: 30,
              )),
          GestureDetector(
              onTap: () {
                routeController.selectPage("add_post");
              },
              child: const Icon(
                Icons.add_box,
                size: 30,
              )),
          GestureDetector(
              onTap: () {
                routeController.selectPage("reels");
              },
              child: const Icon(
                Icons.video_camera_front,
                size: 30,
              )),
          GestureDetector(
            onTap: () {
              routeController.selectPage("profile");
            },
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile2.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
