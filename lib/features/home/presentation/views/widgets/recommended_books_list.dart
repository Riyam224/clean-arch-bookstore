// todo recomended books list
import 'package:bookstore_/core/utils/assets.dart';
import 'package:flutter/material.dart';

class RecommendedBooks extends StatelessWidget {
  RecommendedBooks({super.key});

  final List<String> books = [
    Assets.imagesRecommend1,
    Assets.imagesBook2,
    Assets.imagesBook7,
    Assets.imagesRecommend3,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 140,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(books[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }));
  }
}
