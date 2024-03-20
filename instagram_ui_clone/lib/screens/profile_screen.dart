import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:instagram_ui_clone/utils/colors.dart';
import 'package:instagram_ui_clone/widgets/stories_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.lock),
                    Text(
                      'username',
                      style: TextStyle(fontSize: 25),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                Icon(Icons.add_a_photo_rounded),
                Icon(Icons.add_box_outlined),
                Icon(Icons.menu)
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile2.jpg'),
                  ),
                  Column(
                    children: [
                      Text(
                        '6',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text('posts')
                    ],
                  ),
                  Column(
                    children: [
                      Text('118',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('followers')
                    ],
                  ),
                  Column(
                    children: [
                      Text('118',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('following')
                    ],
                  )
                ],
              ),
            ),
            const Text('Username',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(15)),
                height: 28,
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    '@username',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(10)),
                      height: 28,
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Text(
                            'Edit profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(10)),
                      height: 28,
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Text(
                            'Share profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(10)),
                    height: 28,
                    child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.person_add)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return const StoriesWidget();
                  }),
            ),
            const SizedBox(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 37.0),
                          child: Icon(Icons.grid_on_outlined),
                        ),
                        Icon(Icons.video_camera_back_outlined),
                        Padding(
                          padding: EdgeInsets.only(right: 37.0),
                          child: Icon(Icons.person_pin_outlined),
                        )
                      ]),
                )),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 3.0,
                    mainAxisSpacing: 3.0),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Image.asset('assets/images/post.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
