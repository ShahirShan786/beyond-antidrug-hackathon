

import 'dart:developer';

import 'package:beyond/core/const.dart';
import 'package:beyond/dash_board_screen.dart';
import 'package:beyond/services/login_services.dart';
import 'package:beyond/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailContorller = TextEditingController();
  TextEditingController passwordConteoller = TextEditingController();
  bool isvisible = false;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailContorller.dispose();
    passwordConteoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Beyond",
          style: GoogleFonts.poppins(
              fontSize: 25, fontWeight: FontWeight.bold, color: primaryColor),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Log in to your\naccount",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  CustomTextFeild(
                      hintLabel: "email",
                      controller: emailContorller,
                      onpressed: () {}),
                  CustomTextFeild(
                    obsqureText: isvisible,
                    hintLabel: "password",
                    controller: passwordConteoller,
                    onpressed: () {},
                    suffixWidget: IconButton(
                        onPressed: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        icon: isvisible == true
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.visibility)),
                  ),
                  SizedBox(
                    height: 334,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: InkWell(
                          onTap: () async {
                            LoginServices loginServices = LoginServices();
                            if (formKey.currentState!.validate()) {
                              String email = emailContorller.text;
                              String password = passwordConteoller.text;

                              // Await the login response
                              final data =
                                  await loginServices.logIn(email, password);

                              if (data == null) {
                                // Show error message if login fails
                             log("login Faild");
                             if(!context.mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text("Failed to login"),
                                  ),
                                );
                              } else {
                                // Navigate to DashboardScreen if login succeeds
                                 if(!context.mounted) return;
                                 ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
                                    content: Text("Log in Sucessfully"),
                                  ));
                                 if(!context.mounted) return;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => DashBoardScreen()),
                                );
                              }
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 55,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Log in",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: kwhite),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Sign Up?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      )
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
