import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginauthh/components/my_botton.dart';
import 'package:loginauthh/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: Get.height * 0.15,
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Text('Welcome Back',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    onTap: () {
                      log('email xoiyo');
                    },
                    controller: userNameController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    onTap: () {
                      log('PSW hanyo ');
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 38.0, vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Fogot Password?',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 15)),
                    ],
                  ),
                ),
                MyBotton(
                  onPressed: () {
                    log('Login garyo');
                    signUserIn();
                  },
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 1,
                        color: Colors.grey[400],
                        thickness: 1,
                      ),
                    ),
                    Text(
                      'Or Continue With',
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),
                    ),
                    Expanded(
                      child: Divider(
                          color: Colors.grey[400],
                          thickness: 1,
                          indent: 1,
                          endIndent: 25),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SquareTile(
                        imagePath: 'assets/images/google_logo.png'),
                    SizedBox(width: Get.width * 0.05),
                    const SquareTile(imagePath: 'assets/images/fb_logo.png')
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member ?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(
                      width: Get.width * 0.025,
                    ),
                    const Text(
                      'Register Now ',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
