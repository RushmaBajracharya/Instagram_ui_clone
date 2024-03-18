import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:instagram_ui_clone/controller/route_controller.dart';

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
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                routeController.selectPage("home");
              },
              child: Icon(
                Icons.home,
                size: 30,
              )),
          GestureDetector(
              onTap: () {
                routeController.selectPage("search");
              },
              child: Icon(
                Icons.search,
                size: 30,
              )),
          GestureDetector(
              onTap: () {
                routeController.selectPage("add_post");
              },
              child: Icon(
                Icons.add_outlined,
                size: 30,
              )),
          GestureDetector(
              onTap: () {
                routeController.selectPage("reels");
              },
              child: Icon(
                Icons.home,
                size: 30,
              )),
          GestureDetector(
            onTap: () {
              routeController.selectPage("profile");
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile2.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
