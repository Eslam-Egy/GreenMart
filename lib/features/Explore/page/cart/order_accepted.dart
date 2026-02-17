import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/constants/image_icons.dart';
import 'package:green_nart_app/core/function/navigation.dart';
import 'package:green_nart_app/core/styles/custom_svg_picture.dart';
import 'package:green_nart_app/features/intro/firstscreen.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvgPicture(path: Appimage.ordersvg, color: null),
            SizedBox(height: 60),

            Text(
              "Your Order has been \n          accepted",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            Text(
              "Your items has been placcd and is on \n          it’s way to being processed",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 61,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  pushReplacment(context, FirstScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.primary,
                ),
                child: Text(
                  "Go To Home",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.scaffoldBackground,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
