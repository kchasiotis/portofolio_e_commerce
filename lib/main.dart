import 'package:flutter/material.dart';
import 'package:portofolio_e_commerce/pages/forgot_password/forgot_password.dart';
import 'package:portofolio_e_commerce/pages/home_screen/home.dart';
import 'package:portofolio_e_commerce/pages/login/login.dart';
import 'package:portofolio_e_commerce/pages/sign_up/sign_up.dart';
import 'package:portofolio_e_commerce/pages/street_clothes/street_clothes.dart';
import 'package:portofolio_e_commerce/pages/visual_search/visual_search.dart';

import 'pages/home_screen/showcase_home_screen.dart';
import 'pages/search_by_photo/search_by_photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF1E1F28),
      ),
      // home: const SignUp(),
      // home: const Login(),
      // home: ForgotPassword(),
      routes: {
        '/': (context) => const ShowCaseHomeScreen(),
        '/sign_up': (context) => const SignUp(),
        '/login': (context) => const Login(),
        '/forgot_password': (context) => ForgotPassword(),
        '/visual_search': (context) => const VisualSearch(),
        '/search_by_photo': (context) => const SearchByPhoto(),
        '/home': (context) => const Home(),
        '/street_clothes': (context) => const StreetClothes(),
      },
    );
  }
}
