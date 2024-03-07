import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Login/customs/Textfield.dart';
import '../app_custom.dart';

class Card_page extends StatelessWidget {
  const Card_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
            child: Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Listview(
                  title: 'Minimal Stand',
                  subtitle: '25.00',
                  image: 'assets/1.jpeg',
                  icon: Icons.dangerous_outlined,
                  text: '01',
                  onPressed1: () {},
                  onPressed2: () {},
                  buttomicon1: Icons.add,
                  buttomicon2: Icons.remove,
                ),
                Listview(
                  title: 'Coffee Table',
                  subtitle: '20.00',
                  image: 'assets/2.jpeg',
                  icon: Icons.dangerous_outlined,
                  text: '01',
                  onPressed1: () {},
                  onPressed2: () {},
                  buttomicon1: Icons.add,
                  buttomicon2: Icons.remove,
                ),
                Listview(
                  title: 'Minimal Desk',
                  subtitle: '50.00',
                  image: 'assets/3.jpeg',
                  icon: Icons.dangerous_outlined,
                  text: '01',
                  onPressed1: () {},
                  onPressed2: () {},
                  buttomicon1: Icons.add,
                  buttomicon2: Icons.remove,
                ),
               const  SizedBox(height: 110),
                Row(
                  children: [
                    const SizedBox(
                      width: 270,
                      child: Textfield(
                        text: 'Enter Your Promo Code',
                        size: 14,
                      ),
                    ),
                    FloatingActionButton.small(
                      backgroundColor: Colors.black,
                      onPressed: () {},
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(width: 200),
                    Text(
                      "95.00",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: App_customs(
                    onpressed: () {},
                    text: 'Check Out',
                    cbottom: Colors.black,
                    color: Colors.white,
                    size: 18,
                    redius: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
