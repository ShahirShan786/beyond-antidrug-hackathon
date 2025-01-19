import 'package:beyond/core/const.dart';
import 'package:beyond/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        SizedBox(
          width: double.infinity,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "max_byond",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "maxbynd@gmail.com",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 150,
                        height: 28,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(231, 231, 231, 0.9),
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[700],
                              size: 15,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "User for 18m 17d",
                              style: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "General",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ProfileCard(
            suffixIcon: Icons.person,
            label: "My Account",
            trailingIcon: Icons.arrow_forward_ios_rounded),
        ProfileCard(
            suffixIcon: Icons.menu_open,
            label: "My Progress",
            trailingIcon: Icons.arrow_forward_ios_rounded),
        ProfileCard(
            suffixIcon: Icons.settings,
            label: "Settings",
            trailingIcon: Icons.arrow_forward_ios_rounded),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Theme",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Card(
            elevation: 0,
            color: Color.fromRGBO(249, 250, 248, 1.0),
            child: ListTile(
                leading: Icon(Icons.dark_mode_outlined),
                title: Text("Dark Mode"),
                trailing: Switch(value: false, onChanged: (value) {})),
          ),
        ),
      ]),
    );
  }
}
