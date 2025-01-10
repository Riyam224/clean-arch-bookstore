// ignore_for_file: sized_box_for_whitespace

import 'package:bookstore_/core/utils/assets.dart';
import 'package:bookstore_/core/utils/constants.dart';
import 'package:flutter/material.dart';

class OnBoardingBooks extends StatelessWidget {
  OnBoardingBooks({super.key});

  // todo  books images to use it in the gridview
  final List<String> bookImages = [
    Assets.imagesBook1,
    Assets.imagesBook2,
    Assets.imagesBook3,
    Assets.imagesBook4,
    Assets.imagesBook5,
    Assets.imagesBook6,
    Assets.imagesBook7,
    Assets.imagesBook8,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 46.14,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      Assets.imagesIconHome,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 30.0,
                    child: const Text(
                      'Easy Book',
                      style: TextStyle(
                        fontSize: 20,
                        color: pinkColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 400,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  childAspectRatio: 0.45, // Adjust as needed
                  crossAxisSpacing: 10.0, // Space between columns
                  mainAxisSpacing: 0.2, // Further reduced space between rows
                ),
                itemCount: bookImages.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Image.asset(
                      // Assets.imagesBook1,
                      bookImages[index],
                      fit: BoxFit.cover, // Adjust to fit the card
                    ),
                  );
                },
              ),
            ),
            // todo
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Book Has Power To Chnage\nEverything',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: pinkColor,
                fontSize: 20,
                fontFamily: 'HK Grotesk',
                fontWeight: FontWeight.w700,
                height: 1.50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 328,
              child: Text(
                'We have true friend in our life and the books is that. Book has power to chnage .',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontFamily: 'HK Grotesk',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'home');
              },
              child: Container(
                width: 230,
                height: 55,
                decoration: ShapeDecoration(
                  color: const Color(0xFFDE7773),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 45,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Get Started Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 14,
                      fontFamily: 'HK Grotesk',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
