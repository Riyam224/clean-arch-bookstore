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
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          // todo the main container to fill the screen the parent
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              Assets.imagesVectorBg,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60.14,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  width: 150.85,
                  height: 46.14,
                  child: Row(
                    children: [
                      Container(
                        width: 34.76,
                        height: 46.14,
                        child: Image.asset(
                          Assets.imagesIconHome,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 99.85,
                        height: 46.14,
                        child: const Text(
                          'Easy Book',
                          style: TextStyle(
                            fontSize: 20,
                            color: pinkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )

                      //  todo
                    ],
                  ),
                ),
                Positioned(
                  top: 140,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      // todo
                      height: MediaQuery.of(context).size.height * 0.53,
                      // color: Colors.red,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, // Number of columns
                          childAspectRatio: 0.45, // Adjust as needed
                          crossAxisSpacing: 10.0, // Space between columns
                          mainAxisSpacing:
                              0.2, // Further reduced space between rows
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
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    // color: Colors.orange,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Text(
                            'Book Has Power To Chnage\nEverything',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF292B38),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              height: 1.50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          width: 328,
                          child: Text(
                            'We have true friend in our life and the books is that. Book has power to chnage yourself and make you more valueable.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4F6C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        // todo
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
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
