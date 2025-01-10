// todo popular books list view

// ignore_for_file: sized_box_for_whitespace

import 'package:bookstore_/core/utils/assets.dart';
import 'package:bookstore_/core/utils/constants.dart';
import 'package:flutter/material.dart';

class PopularBooksListView extends StatelessWidget {
  PopularBooksListView({super.key});

  final List<Map<String, dynamic>> popularBooks = [
    {
      'title': 'The Psychology of Money',
      'image': Assets.imagesBook1,
    },
    {
      'title': 'The Rich Dad and The Poor Dad',
      'image': Assets.imagesBook2,
    },
    {
      'title': 'The Steal Like An Artist',
      'image': Assets.imagesBook3,
    },
    {
      'title': 'The Secret',
      'image': Assets.imagesBook5,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: popularBooks.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 150,
                          child: Image.asset(
                            popularBooks[index]['image'],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: 150,
                          color: const Color.fromARGB(104, 255, 255, 255),
                          // todo
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                popularBooks[index]['title'],
                                style: const TextStyle(
                                  color: Color(0xFF4D506C),
                                  fontSize: 14,
                                  fontFamily: 'HK Grotesk',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Text(
                                'Austin Kleon',
                                style: TextStyle(
                                  color: Color(0xFF4D506C),
                                  fontSize: 10,
                                  fontFamily: 'HK Grotesk',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '5.0',
                                      style: TextStyle(
                                        color: Color(0xFFF24F09),
                                        fontSize: 8,
                                        fontFamily: 'HK Grotesk',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' | Based on 23k Reviews',
                                      style: TextStyle(
                                        color: Color(0xFF4D506C),
                                        fontSize: 8,
                                        fontFamily: 'HK Grotesk',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                '\$45.87',
                                style: TextStyle(
                                  color: Color(0xFF4D506C),
                                  fontSize: 10,
                                  fontFamily: 'HK Grotesk',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // todo navigate to details view
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, 'details');
                                      },
                                      child: Container(
                                        width: 78,
                                        height: 26,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFDE7773),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x3F000000),
                                              blurRadius: 45,
                                              offset: Offset(0, 4),
                                              spreadRadius: 0,
                                            ),
                                          ],
                                        ),
                                        child: const Center(
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
                                    ),
                                    // todo navigate to details view
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, 'details');
                                      },
                                      child: Container(
                                        width: 78,
                                        height: 26,
                                        decoration: ShapeDecoration(
                                          // color: Color(0xFFDE7773),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
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
                                            'More Details',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: blackColor,
                                              fontSize: 10,
                                              fontFamily: 'HK Grotesk',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
