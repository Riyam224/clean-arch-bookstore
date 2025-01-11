import 'package:bookstore_/core/splash_view.dart';
import 'package:bookstore_/features/details/presentation/views/details_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/helper_functions/general_routes.dart';
import 'features/onBoarding/presentation/views/onBoarding_view.dart';

void main() {
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        textTheme: GoogleFonts.poppinsTextTheme(
          // Use Google Fonts for the text theme
          ThemeData.dark()
              .textTheme, // Preserve existing dark theme text styles
        ),
      ),
      // todo

      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
