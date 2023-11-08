import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_text_field.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/utils/app_colors.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

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
                "Questions",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.normalActive),
              ),
              const SizedBox(height: 14),
              const Text(
                "some questions to determine the degree of\nthe disease, not its diagnosis",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      text: "Child Name",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomTextField(
                      text: "Age",
                    ),
                  ),
                ],
              ),
              CustomTextField(
                text: "Question 1",
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      text: "Answer 1",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomTextField(
                      text: "Answer 1",
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      text: "Answer 1",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomTextField(
                      text: "Answer 1",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              MainButton(
                function: () {},
                text: "Submit",
                buttonColor: AppColors.normalActive,
                textColor: Colors.white,
              ),
              const SizedBox(height: 20),
              MainButton(
                function: () {},
                text: "Back",
                buttonColor: Colors.white,
                textColor: AppColors.normalActive,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
