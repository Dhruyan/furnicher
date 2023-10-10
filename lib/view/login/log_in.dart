import 'package:flutter/material.dart';
import 'package:furnicher/res/contrest/app_assets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../res/comman/app_button.dart';
import '../../res/contrest/app_colour.dart';
import '../../res/contrest/app_string.dart';
import '../../utils/Routes/routes_name.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: devicePadding,
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: screenHeight / 30),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.8,
                        indent: 23,
                        endIndent: 5,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    SizedBox(width: screenWidth / 60),
                    Image.asset(
                      Appassets.back,
                      height: screenHeight / 11,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.8,
                        endIndent: 23,
                        indent: 5,
                        color: AppColors.lightGrey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 50),
                const Text(
                  textAlign: TextAlign.center,
                  AppStrings.welcomeBack,
                  style: TextStyle(
                    color: AppColors.lightBlackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: screenHeight / 50),
                Container(
                  height: screenHeight / 1.95,
                  width: screenWidth / 1.1,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: const [BoxShadow(blurRadius: 04, color: Color(0xFFD9D9D9))],
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: AppColors.lightGrey,
                    //     offset: Offset(1.4, 1.4),
                    //     blurRadius: 10,
                    //     spreadRadius: 2,
                    //   ),
                    // ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight / 20),
                      Container(
                        height: screenHeight / 9.2,
                        width: screenWidth / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightGrey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: screenWidth / 40, left: screenWidth / 20),
                              child: const Text(
                                "Email",
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth / 20, top: screenWidth / 80),
                              child: TextFormField(
                                // controller: emailcontroller,
                                validator: (value) {
                                  if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                                    return "Enter email id ";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                  hintText: "Enter email ",
                                  contentPadding: EdgeInsets.all(12),
                                  hintStyle: TextStyle(color: Color(0xFFB3B3B3), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 30),
                      Container(
                        height: screenHeight / 9.2,
                        width: screenWidth / 1.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightGrey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: screenWidth / 40, left: screenWidth / 20),
                              child: const Text(
                                "password",
                                style: TextStyle(
                                  color: AppColors.greyColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth / 20, top: screenWidth / 80),
                              child: TextFormField(
                                // controller: emailcontroller,
                                validator: (value) {
                                  if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                                    return "Enter email id ";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  isDense: true,
                                  hintText: "Enter password ",
                                  contentPadding: EdgeInsets.all(12),
                                  hintStyle: TextStyle(color: Color(0xFFB3B3B3), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          AppStrings.fPassword,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      AppButton(
                        height: screenHeight / 15,
                        width: screenWidth / 1.2,
                        elevated: "Log in",
                        onPress: () {
                          Get.offNamed(RoutesName.homeView);
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutesName.signupView);
                        },
                        child: const Text(
                          AppStrings.sign,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
