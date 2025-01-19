import 'package:beyond/core/const.dart';
import 'package:beyond/dash_board_screen.dart';
import 'package:beyond/screens/main_screen/login_screen.dart';
import 'package:beyond/services/register_services.dart';
import 'package:beyond/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailContorller = TextEditingController();
  TextEditingController passwordConteoller = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool isvisible = false;
  final formKey = GlobalKey<FormState>();
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
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create a new\naccount",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CustomTextFeild(
                      hintLabel: "username",
                      controller: usernameController,
                      onpressed: () {}),
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
                            ? Icon(
                                Icons.visibility_off_outlined,
                                size: 25,
                              )
                            : Icon(
                                Icons.visibility,
                                size: 25,
                              )),
                  ),
                  SizedBox(
                    height: 230,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: InkWell(
                          onTap: () async {
                            RegisterServices registerServices =
                                RegisterServices();
                            if (formKey.currentState!.validate()) {
                              String username = usernameController.text;
                              String email = emailContorller.text;
                              String password = passwordConteoller.text;

                              final data = await registerServices.getuserInfo(
                                  username, email, password);

                              if (data != null) {
                                if (!context.mounted) return;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
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
                                "Sign Up",
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
                            "Already have account?",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Log in?",
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
