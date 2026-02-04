import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/constants/image_icons.dart';
import 'package:green_nart_app/core/function/navigation.dart';
import 'package:green_nart_app/features/intro/scandscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    //to make delay 3sec
    Future.delayed(Duration(seconds: 3), () {
      pushReplacment(context, const Scandscreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SvgPicture.asset(Appimage.GreenMartsvg)],
        ),
      ),
    );
  }
}
