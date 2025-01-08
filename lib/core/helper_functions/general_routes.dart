import 'package:bookstore_/core/splash_view.dart';
import 'package:bookstore_/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../features/onBoarding/presentation/views/onBoarding_view.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashView(),
      );
    case OnboardingView.routeName:
      return MaterialPageRoute(
        builder: (_) => const OnboardingView(),
      );
    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeView(),
      );
    //* default route
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text('Page not found'),
                ),
              ));
  }
}
