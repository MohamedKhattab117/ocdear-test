import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/utils/app_colors.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MainLogo(),
              const Text(
                "Write New Password",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.normalActive),
              ),
              const SizedBox(height: 14),
              const Text(
                "Your new password must be different",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                text: "New Password",
                icon: Icons.remove_red_eye,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                text: "Confirm Password",
                icon: Icons.remove_red_eye,
              ),
              const SizedBox(height: 60),
              MainButton(
                function: () {},
                text: "Submit",
                buttonColor: AppColors.normalActive,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
