// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toko_online/pages/cart_page.dart';
import 'package:toko_online/pages/checkout_page.dart';
import 'package:toko_online/pages/checkout_success.dart';
import 'package:toko_online/pages/detail_chat_page.dart';
import 'package:toko_online/pages/edit_profile_page.dart';
import 'package:toko_online/pages/home/main_page.dart';
import 'package:toko_online/pages/product_page.dart';
import 'package:toko_online/pages/sign_up_page.dart';
import 'package:toko_online/pages/splash_page.dart';
import 'package:toko_online/pages/sign_in_page.dart';
import 'package:toko_online/providers/auth_provider.dart';
import 'package:toko_online/providers/product_provider.dart';
import 'package:toko_online/providers/wishlist_provider.dart';
import 'package:toko_online/widgets/wishlist_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context)  => ProductProvider(),
        ),
        ChangeNotifierProvider(create:  (context) => WishlistProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
