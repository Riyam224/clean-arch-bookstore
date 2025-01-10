import 'package:bookstore_/core/utils/constants.dart';
import 'package:bookstore_/features/onBoarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  static const routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
