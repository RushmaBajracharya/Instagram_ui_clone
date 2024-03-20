import 'package:flutter/material.dart';

import 'package:instagram_ui_clone/utils/colors.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.close,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'New post',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    'Next',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/post.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom:
                    16, // Adjust this value to position the circle vertically
                left:
                    16, // Adjust this value to position the circle horizontally
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.fullscreen,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Add your expand icon onPressed action here
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Recents',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              child: const Icon(Icons.select_all)),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              child: const Icon(Icons.camera_alt))
                        ],
                      ),
                    ]),
              )),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
    ));
  }
}
