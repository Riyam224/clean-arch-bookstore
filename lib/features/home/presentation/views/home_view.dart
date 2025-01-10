import 'package:bookstore_/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../onBoarding/presentation/views/widgets/on_boarding_books_grid.dart';
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
        top: 20,
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
                  size: 30,
                ),
                Text(
                  'Book of the week',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
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
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 388,
            height: 183,
            // color: pinkColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 36,
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 178.68,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.imagesBook6),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 226,
                    height: 112,
                    color: whiteColor,
                    child: Column(
                      children: [
                        const Text(
                          'The Psychology of Money',
                          style: TextStyle(
                            color: Color(0xFF4D506C),
                            fontSize: 14,
                            fontFamily: 'HK Grotesk',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 226,
                          height: 46,
                          child: Text(
                            'The psychology of money is the study of our behavior with money. Success with money isnt about knowledge, IQ or how good you are at math. Its about behavior, and everyone is prone to certain behaviors over others.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 85, 21, 21),
                              fontSize: 7,
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 87,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    color: pinkColor,
                                    borderRadius: BorderRadius.circular(5),
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
                                  )),
                              const SizedBox(
                                width: 20,
                                height: 26,
                              ),
                              Container(
                                  width: 87,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Learn More',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF4D506C),
                                      fontSize: 10,
                                      fontFamily: 'HK Grotesk',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
