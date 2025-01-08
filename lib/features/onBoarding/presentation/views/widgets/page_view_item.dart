// ignore_for_file: sized_box_for_whitespace

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
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.arrowLeft,
                    size: 30,
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
                        letterSpacing: 1,
                        height: 2.25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 42.97,
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.5,
              child: Image.asset(img),
            ),
            const SizedBox(
              height: 106,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: whiteColor,
                fontSize: 24,
                fontFamily: 'HK Grotesk',
                fontWeight: FontWeight.w700,
                height: 1.50,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 328,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontFamily: 'HK Grotesk',
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
