import 'package:bookstore_/core/utils/assets.dart';
import 'package:bookstore_/core/utils/constants.dart';
import 'package:bookstore_/features/home/presentation/views/home_view.dart';
import 'package:bookstore_/features/onBoarding/presentation/views/widgets/on_boarding_books_grid.dart';
import 'package:flutter/material.dart';
// import 'package:dots_indicator/dots_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'page_view_item.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
//  todo
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            // todo
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              // todo first page
              const PageViewItem(
                img: Assets.imagesImg1,
                title: 'Only Books Can Help You ',
                description:
                    'Books can help you to increase your knowledge and become more successfully.',
              ),
              // // todo second page
              const PageViewItem(
                img: Assets.imagesImg2,
                title: 'Learn Smartly',
                description:
                    'It’s 2022 and it’s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC. ',
              ),
              // todo third page
              OnBoardingBooks()
            ],
          ),
        ),

        // todo
        // DotsIndicator(
        //   dotsCount: 3,
        //   position: _currentPage,
        //   decorator: DotsDecorator(
        //     size: const Size(10.0, 8.0),
        //     activeSize: const Size(20.0, 20.0),
        //     activeColor: pinkColor,
        //     color: whiteColor,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(11),
        //     ),
        //     spacing: const EdgeInsets.all(4.0),
        //   ),
        // ),

        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: const WormEffect(
            activeDotColor: pinkColor,
            dotColor: whiteColor,
            dotHeight: 10,
            dotWidth: 10,
            spacing: 4.0,
          ),
        ),

        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
