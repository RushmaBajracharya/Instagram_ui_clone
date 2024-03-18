import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                'assets/images/post.jpg',
                fit: BoxFit.cover,
              )),
              const Positioned(
                child: Padding(
                  padding: EdgeInsets.only(left: 7.0, top: 7.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/profile2.jpg'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Scenary',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.comment, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.send, color: Colors.white),
                    ],
                  ),
                  Icon(Icons.save, color: Colors.white)
                ],
              ),
              Text('Liked by rush and others'),
              Text(
                'View all comments',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '2 hours ago',
                style: TextStyle(color: Colors.grey),
              ),
              Divider(),
            ],
          ),
        )
      ],
    );
  }
}
