import 'package:flutter/material.dart';

import '../../../onBoarding/presentation/views/widgets/on_boarding_books_grid.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('home page'),
    ));
  }
}
