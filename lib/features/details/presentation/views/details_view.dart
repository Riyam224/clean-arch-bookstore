// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookstore_/core/utils/assets.dart';
import 'package:bookstore_/core/utils/constants.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const routeName = 'details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,

          // todo main column on page
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 344,
                  decoration: const BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
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
                          const Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          color: greyColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 150,
                                  child: Image.asset(
                                    Assets.imagesBook1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 20,
                                ),
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 150,
                                    // color: pinkColor,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'The Psychology of Money',
                                          style: TextStyle(
                                            color: blackColor,
                                            fontSize: 14,
                                            fontFamily: 'HK Grotesk',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const SizedBox(
                                          width: 221,
                                          height: 45,
                                          child: Text(
                                            'The psychology of money is the study of our behavior with money. Success with money isnt about knowledge, IQ or how good you are at math. Its about behavior, and everyone is prone to certain behaviors over others.',
                                            style: TextStyle(
                                              color: blackColor,
                                              fontSize: 8,
                                              fontFamily: 'HK Grotesk',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 17,
                                              height: 17,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFE7B53F),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 1,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 2),
                                            Container(
                                              width: 17,
                                              height: 17,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFE7B53F),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 1,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 2),
                                            Container(
                                              width: 17,
                                              height: 17,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFE7B53F),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 1,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 2),
                                            Container(
                                              width: 17,
                                              height: 17,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFE7B53F),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 1,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 2),
                                            Container(
                                              width: 17,
                                              height: 17,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFE7B53F),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 1,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              '(5.0)',
                                              style: TextStyle(
                                                color: blackColor,
                                                fontSize: 10,
                                                fontFamily: 'HK Grotesk',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),

                Container(
                  width: 328,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: greyColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 35,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          Assets.imagesAuthor, // Replace with your image URL
                          width: 50, // Adjust size as needed
                          height: 50, // Adjust size as needed
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Author',
                            style: TextStyle(
                              color: Color(0xFF9091A0),
                              fontSize: 10,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Morgan Housel',
                            style: TextStyle(
                              color: Color(0xFF4D506C),
                              fontSize: 14,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Best Seller of New York Times',
                            style: TextStyle(
                              color: Color(0xFF9091A0),
                              fontSize: 8,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 17,
                        height: 17,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: StarBorder(
                            points: 5,
                            innerRadiusRatio: 0.38,
                            pointRounding: 1,
                            valleyRounding: 0,
                            rotation: 0,
                            squash: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // todo after the floating
                const SizedBox(height: 30),
                Container(
                    width: double.infinity,
                    // color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About The Book',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 18,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 351,
                            height: 217,
                            child: Text(
                              'The Psychology of Money is an essential read for anyone interested in being better with money. Fast-paced and engaging, this book will help you refine your thoughts towards money. You can finish this book in a week, unlike other books that are too lengthy.\n\nThe most important emotions in relation to money are fear, guilt, shame and envy. Its worth spending some effort to become aware of the emotions that are especially tied to money for you because, without awareness, they will tend to override rational thinking and drive your actions.',
                              style: TextStyle(
                                color: Color(0xFF9091A0),
                                fontSize: 14,
                                fontFamily: 'HK Grotesk',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'News',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 18,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            height: 184,
                            color: pinkColor,
                            child: Image.asset(
                              Assets.imagesSigning,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
