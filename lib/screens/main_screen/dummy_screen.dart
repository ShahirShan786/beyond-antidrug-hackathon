import 'package:beyond/screens/main_screen/login_screen.dart';
import 'package:beyond/screens/main_screen/register_screen.dart';
import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => LoginScreen()));
                },
                child: Text("GO to login page")),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => RegisterScreen()));
                },
                child: Text("GO to register page"))
          ],
        ),
      ),
    );
  }
}
