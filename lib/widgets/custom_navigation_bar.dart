import 'package:beyond/core/const.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> changeIndexNotifier = ValueNotifier(0);

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: changeIndexNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              // fixedColor: Colors.amber,

              type: BottomNavigationBarType.fixed,
              currentIndex: newIndex,
              elevation: 0,
              onTap: (index) {
                changeIndexNotifier.value = index;
              },
              backgroundColor: Color.fromRGBO(231, 231, 231, 0.9),
              selectedItemColor: primaryColor,
              unselectedItemColor: Colors.grey,
              selectedIconTheme: IconThemeData(color: primaryColor),
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              unselectedFontSize: 15,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.black54,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.emoji_events,
                      color: Colors.black54,
                    ),
                    label: "Challenge"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.report_outlined,
                      color: Colors.black54,
                    ),
                    label: "Report"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.people,
                      color: Colors.black54,
                    ),
                    label: "Communities"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.black54,
                    ),
                    label: "Profile")
              ]);
        });
  }
}
