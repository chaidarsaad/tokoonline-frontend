// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:toko_online/pages/detail_chat_page.dart';
import 'package:toko_online/pages/edit_profile_page.dart';
import 'package:toko_online/pages/home/main_page.dart';
import 'package:toko_online/pages/product_page.dart';
import 'package:toko_online/pages/sign_up_page.dart';
import 'package:toko_online/pages/splash_page.dart';
import 'package:toko_online/pages/sign_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
      },
    );
  }
}
