import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/function/navigation.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';
import 'package:green_nart_app/features/auth/verificationCode_Screen.dart';

class YourNumber extends StatefulWidget {
  const YourNumber({super.key});

  @override
  State<YourNumber> createState() => _YourNumberState();
}

class _YourNumberState extends State<YourNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Appcolor.scaffoldBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your mobile number",
                    style: TextStyles.headline.copyWith(
                      color: Appcolor.textPrimary,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "We need to verify you. We will send you a one\ntime verification code.",
                    style: TextStyles.button.copyWith(
                      color: Appcolor.textMobileNumber,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 42),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '01xxxxxxxx',
                      filled: true,
                      fillColor: Appcolor.textfrombackgroundcolor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
        
                  SizedBox(height: 46),
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
                        pushto(context, VerificationCodeScreen());
                      },
                      child: Text(
                        "Next",
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Center(child: Text("Resend confirmation code (1:23)")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
