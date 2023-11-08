import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/utils/app_colors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                "Forget Password",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.normalActive),
              ),
              const SizedBox(height: 14),
              const Text(
                "Please, Enter e-mail or phone associated\nwith application",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                text: "E-Mail or Phone",
              ),
              const SizedBox(height: 60),
              MainButton(
                function: () {},
                text: "Send code",
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
