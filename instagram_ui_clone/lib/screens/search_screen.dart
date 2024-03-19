import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: AppColors.barColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        contentPadding: EdgeInsets.symmetric(vertical: 2.0)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 7.0,
                    mainAxisSpacing: 7.0),
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
