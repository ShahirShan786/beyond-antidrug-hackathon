import 'package:beyond/core/const.dart';
import 'package:beyond/screens/main_screen/login_screen.dart';
import 'package:beyond/screens/main_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/736x/85/e7/99/85e7990775438bb91f6a63a6330e3c9f.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // White Gradient Overlay (Covers more area)
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height *
                0.7, // Cover 70% of the height
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white,
                  Colors.white70,
                  Colors.white54,
                  Colors.transparent,
                ],
                stops: [0.0, 0.4, 0.7, 1.0], // Adjust the gradient stops
              ),
            ),
          ),
        ),
        // Welcome Text
        Positioned(
          top: 390,
          right: 60,
          child: Text(
            textAlign: TextAlign.center,
            "We welcome you to\nBeyond Addiction",
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w800,
              decoration: TextDecoration.none, // Remove underline explicitly
            ),
          ),
        ),
        // Start Now Button 1
        Positioned(
          bottom: 230,
          right: 10,
          left: 10,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 36, 127, 133), // Use your primary color here
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      decoration:
                          TextDecoration.none, // Remove underline explicitly
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Start Now Button 2
        Positioned(
          bottom: 160,
          right: 10,
          left: 10,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      decoration:
                          TextDecoration.none, // Remove underline explicitly
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Beyond",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: primaryColor,
                decoration: TextDecoration.none, // Remove underline explicitly
              ),
            ),
          ),
        ),
      ],
    );
  }
}
