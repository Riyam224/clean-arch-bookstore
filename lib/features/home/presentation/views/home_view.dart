// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bookstore_/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: HomeViewBody(),
    ));
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 20,
                ),
                Text(
                  'Book of the week',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontFamily: 'HK Grotesk',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.menu,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 200,
              // color: pinkColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 150,
                        child: Image.asset(
                          Assets.imagesBook6,
                          fit: BoxFit.fill,
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 150,
                        color: whiteColor,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'The Rich Dad Poor Dad',
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 12,
                                fontFamily: 'HK Grotesk',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 46,
                              // color: pinkColor,
                              child: Text(
                                'The psychology of money is the study of our behavior with money. Success with money isnt about knowledge, IQ or how good you are at math.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 8,
                                  fontFamily: 'HK Grotesk',
                                  fontWeight: FontWeight.w400,
                                  // height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            // todo
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 87,
                                    height: 26,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFDE7773),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 45,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Grab Now',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'HK Grotesk',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 70,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        // color: blackColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x3F000000),
                                            blurRadius: 45,
                                            offset: Offset(0, 4),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Learn More',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF4D506C),
                                            fontSize: 10,
                                            fontFamily: 'HK Grotesk',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
