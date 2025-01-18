import 'dart:ffi';

import 'package:beyond/core/const.dart';
import 'package:beyond/core/dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(color: kwhite),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5,
                ),
                Card(
                  child: Container(
                    width: 200,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          size: 27,
                          color: Colors.grey[500],
                        ),
                        Text(
                          "Search Challenges",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 128, 128),
                      borderRadius: BorderRadius.circular(17)),
                  child: Center(
                    child: Icon(
                      Icons.filter_list_off_rounded,
                      color: kwhite,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 98,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 128, 128),
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                    child: Text(
                      "my\nChallenges",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: kwhite,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(208, 232, 232, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Discover Top Picks",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600]),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "+100",
                                style: GoogleFonts.poppins(
                                    fontSize: 33,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Challenges",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[600]),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 128, 128),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Explore more",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: kwhite,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://static.vecteezy.com/system/resources/previews/006/898/179/non_2x/studying-and-learning-online-concept-illustration-free-vector.jpg",
                      width: 120,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular challenges",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  "see all",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 380,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final label = cardDetail[index];
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 260,
                        height: 280,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(231, 231, 231, 0.9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Container(
                                      width: 260,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.network(
                                          label.image,
                                          width: 230,
                                          height: 150,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 7,
                                    right: 10,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.grey[300],
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.favorite_border)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 12),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 60,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        label.label,
                                        maxLines: 2,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 115,
                                    height: 37,
                                    decoration: BoxDecoration(
                                        color: kwhite,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.access_time_rounded,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text("30 days"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber[400],
                                        ),
                                        Text(
                                          "4.9",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
