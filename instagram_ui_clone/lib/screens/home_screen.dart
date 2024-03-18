import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_ui_clone/widgets/post_widget.dart';

import 'package:instagram_ui_clone/widgets/stories_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),

              ///App Bar
              child: Container(
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Instagram',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.message)
                      ],
                    )
                  ],
                ),
              ),
            ),
            //End of appbar

            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return const StoriesWidget();
                  }),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return const PostWidget();
                  })),
            )
          ],
        ),
      ),
    );
  }
}
