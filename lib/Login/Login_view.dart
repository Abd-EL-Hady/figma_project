import 'package:figma_project/Signup/Signup_view.dart';
import 'package:figma_project/app_custom.dart';
import 'package:flutter/material.dart';

import '../Card_page/Card_page.dart';
import 'colors/app_colors.dart';
import 'customs/Textfield.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

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
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //text

                          Text(
                            'Hello !',
                            style: TextStyle(
                                color: AppColors.lable,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'WELLCOME BACK',
                            style: TextStyle(
                                color: AppColors.text,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Email
                  const Textfield(
                    text: 'Email',
                    size: 14,
                  ),
                  const SizedBox(height: 30),
                  const Textfield(
                    text: 'password',
                    size: 14,
                    icon: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(height: 30),
                  //TextButtom
                  Buttons(
                    text: 'Forget your password',
                    color: Colors.black,
                    size: 18,
                    onpressed: () {},
                  ),
                  const SizedBox(height: 30),
                  //ElevatedButtom
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: App_customs(
                        redius: 8,
                        cbottom: Colors.black,
                        text: 'Log in ',
                        size: 18,
                        color: Colors.white,
                        onpressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Card_page()),
                          );
                        }),
                  ),
                  const SizedBox(height: 20),

                  //TextButtom
                  Buttons(
                    text: 'Sign Up',
                    color: Colors.black,
                    size: 18,
                    onpressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const Signup_page()),
                      );
                    },
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
