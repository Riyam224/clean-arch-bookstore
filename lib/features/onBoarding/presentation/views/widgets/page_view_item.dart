// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:bookstore_/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.img,
      required this.title,
      required this.description});

  final String img;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  // todo move to home screen
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 2.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Container(
              width: double.infinity,
              height: 360,
              child: Image.asset(img),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: whiteColor,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                // height: 1.50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: size.width * 0.8,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
