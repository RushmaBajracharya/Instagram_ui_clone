import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 15.0, bottom: 5.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.orange,
                width: 3,
              ),
            ),
            child: const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/profile2.jpg'),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Profile",
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
