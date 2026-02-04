import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/constants/image_icons.dart';
import 'package:green_nart_app/core/function/navigation.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';
import 'package:green_nart_app/features/auth/login_screen.dart';

class Scandscreen extends StatelessWidget {
  const Scandscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          //image
          Image.asset(
            Appimage.mainpng,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          //column
          Positioned(
            bottom: 100,
            left: 30,
            right: 30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Appimage.carotwsvg),
                SizedBox(height: 35),
                Text("Welecome", style: TextStyles.headline),
                Text("to our store", style: TextStyles.headline),
                Text(
                  "Ger your groceries in as fast as one hour",
                  style: TextStyles.button.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolor.primary,
                        minimumSize: Size(double.infinity, 65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20),
                        ),
                      ),
                      onPressed: () {
                        pushReplacment(context, LoginScreen());
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
