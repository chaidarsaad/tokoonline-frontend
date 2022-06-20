// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toko_online/providers/product_provider.dart';
import 'package:toko_online/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {

    getInit();

    super.initState();
  }

   getInit() async{
     await Provider.of<ProductProvider>(context, listen: false).getProducts();
     Navigator.pushNamed(context, '/sign-in');
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/splashimage.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
