import 'package:figma_project/Login/Login_view.dart';
import 'package:figma_project/Login/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Card_page/Card_page.dart';
import '../Login/customs/Textfield.dart';
import '../app_custom.dart';

class Signup_page extends StatelessWidget {
  const Signup_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Text(
                        'WELLCOM',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  //Email
                  const Textfield(
                    text: 'Name',
                    size: 14,
                  ),
                  const SizedBox(height: 30),
                  const Textfield(
                    text: 'Email',
                    size: 14,
                  ),
                  const SizedBox(height: 30),
                  const Textfield(
                    text: 'Password',
                    size: 14,
                    icon: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(height: 30),
                  const Textfield(
                    text: 'Confirm Password',
                    size: 14,
                    icon: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: App_customs(
                        redius: 8,
                        cbottom: Colors.black,
                        text: 'SIGN UP ',
                        size: 18,
                        color: Colors.white,
                        onpressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Card_page()),
                          );
                        }),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account',
                        style: TextStyle(color: AppColors.lable, fontSize: 14),
                      ),
                      Buttons(
                        text: 'Sign IN',
                        color: Colors.black,
                        size: 14,
                        onpressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Login_page()),
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
