import 'package:beyond/core/const.dart';
import 'package:beyond/screens/primay_screens/challenges_screen.dart';
import 'package:beyond/screens/primay_screens/community_screen.dart';
import 'package:beyond/screens/primay_screens/home_screen.dart';
import 'package:beyond/screens/primay_screens/profile_screen.dart';

import 'package:beyond/screens/primay_screens/report_screen.dart';
import 'package:beyond/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});
  final pages = [
    HomeScreen(),
    ChallengesScreen(),
    ReportScreens(),
    CommunityScreen(),
    profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "beyond",
          style: GoogleFonts.poppins(
              fontSize: 25, fontWeight: FontWeight.bold, color: primaryColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  size: 27,
                )),
          )
        ],
      ),
      drawer: Drawer(),
      body: ValueListenableBuilder(
          valueListenable: changeIndexNotifier,
          builder: (contex, int index, _) {
            return pages[index];
          }),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          height: 70,
          child: CustomNavigationBar()),
    );
  }
}
