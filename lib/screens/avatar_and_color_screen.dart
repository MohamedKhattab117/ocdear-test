import 'package:flutter/material.dart';
import 'package:ocdear/components/custom_avatar.dart';
import 'package:ocdear/components/main_button.dart';
import 'package:ocdear/components/main_logo.dart';
import 'package:ocdear/components/pick_app_theme.dart';
import 'package:ocdear/utils/app_colors.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
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
                "Choose Your Avatar",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.normalActive),
              ),
              const SizedBox(height: 14),
              const Text(
                "Omnis aliquam in magni. Enim excepturi quod\ndeserunt. Neque est sit praesentium .",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomAvatar(image: "assets/images/avatar_boy.png"),
                  CustomAvatar(image: "assets/images/avatar_girl.png"),
                ],
              ),
              const SizedBox(height: 60),
              const Text(
                "Change App Color",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.normalActive),
              ),
              const SizedBox(height: 14),
              const Text(
                "Omnis aliquam in magni. Enim excepturi quod\ndeserunt. Neque est sit praesentium .",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  PickTheme(
                    color: AppColors.normalActive,
                  ),
                  PickTheme(
                    color: AppColors.blue,
                  ),
                  PickTheme(
                    color: AppColors.purple,
                  ),
                  PickTheme(
                    color: AppColors.pink,
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
            ],
          ),
        ),
      ),
    );
  }
}
