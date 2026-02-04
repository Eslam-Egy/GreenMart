import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/styles/text_styles.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Appcolor.textfrombackgroundcolor,
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Appcolor.textPrimary,
      ),
    );

    return Scaffold(
      backgroundColor: Appcolor.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Appcolor.textPrimary),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  Text(
                    "Enter verification code",
                    style: TextStyles.headline.copyWith(
                      color: Appcolor.textPrimary,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "We have sent SMS to: 01XXXXXXXXX",
                    style: TextStyles.button.copyWith(
                      color: Appcolor.textMobileNumber,
                    ),
                  ),

                  const SizedBox(height: 35),

                  Center(
                    child: Pinput(
                      length: 5,
                      keyboardType: TextInputType.number,
                      defaultPinTheme: pinTheme,
                      focusedPinTheme: pinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Appcolor.primary, width: 2),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Text(
                          "Change Phone Number",
                          style: TextStyle(color: Appcolor.textMobileNumber),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Confirm",
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
