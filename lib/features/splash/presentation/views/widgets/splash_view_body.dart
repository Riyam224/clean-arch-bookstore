import 'package:bookstore_/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    //  todo navigate to onboarding view
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, 'onboarding');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // todo splash view 
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        Assets.imagesSplash,
        fit: BoxFit.cover,
      ),
    );
  }
}
