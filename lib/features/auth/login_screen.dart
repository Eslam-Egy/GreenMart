import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/constants/image_icons.dart';
import 'package:green_nart_app/core/function/navigation.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';
import 'package:green_nart_app/features/auth/SingUP_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.scaffoldBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Appimage.carotsvg),
                SizedBox(height: 45),
                Row(
                  children: [
                    Text(
                      "Login",
                      style: TextStyles.title.copyWith(
                        color: Appcolor.textPrimary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Enter your emails and password",
                      style: TextStyles.button.copyWith(
                        color: Appcolor.textSecondary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                        filled: true,
                        fillColor: Appcolor.textfrombackgroundcolor,
        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password"),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '****************',
                        filled: true,
                        fillColor: Appcolor.textfrombackgroundcolor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
        
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyles.small.copyWith(
                        color: Appcolor.textPrimary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38),
                SizedBox(
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
                      // pushReplacment(context, SingupScreen());
                    },
                    child: Text(
                      "Log In",
                      style: TextStyles.body.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyles.small.copyWith(
                        color: Appcolor.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        pushReplacment(context, SingupScreen());
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0),
                        minimumSize: Size.zero,
                      ),
                      child: Text(
                        "Singup",
                        style: TextStyle(color: Appcolor.primary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
