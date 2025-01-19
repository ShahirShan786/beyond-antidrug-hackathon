import 'package:beyond/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Container(
                width: double.infinity,
                height: 155,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 128, 128),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.ibb.co/j6RHJrx/illustrationn-megaphone-monochrome-style-isolated-white-background-b.png"))),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "You are Crushing it!\n5 days strong champ",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[100]),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 155,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("My Progress",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[800])),
                              Icon(Icons.arrow_forward_rounded)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                    color: Color(0xFFDBF5F5),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: CircularPercentIndicator(
                        radius: 30.0,
                        lineWidth: 5.0,
                        percent: 0.56,
                        center: Text("56%"),
                        progressColor: Colors.black,
                        backgroundColor: Colors.grey[300]!,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Task Challenges",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "13/27 completed",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: Icon(Icons.arrow_outward_outlined),
                    )
                  ],
                ),
              ),
            ),
            HomeCard(
              name: "youth heaven",
              profilePic:
                  "https://i.pinimg.com/736x/79/20/14/79201407ba0833fd36c9cb91fe8a7cb7.jpg",
              content:
                  "Day 7 of Trigger Free 2.0 🛑✨: Avoided all my triggers this week and replaced them with evening runs and journaling. Feeling stronger every day! #Progress #TriggerFreeJourney ",
              postImage:
                  "https://i.pinimg.com/736x/09/48/f3/0948f3080ddec6ab1735de4e6f168681.jpg",
              commentCount: 10,
              likeCoout: 220,
              minutes: "20",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        "https://i.ibb.co/Sw6sjv8/Whats-App-Image-2025-01-19-at-03-27-19-29eaf86f.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "hack a addict",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[800]),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "7h",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.more_vert_outlined)
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 55,
                        child: Text(
                          "🌟 Habit Builder Challenge: Day 3 🌟Staying consistent feels easier today! 🏋‍♂✨💪 Today's Habit: [Insert Habit, e.g., Morning workout and 10-minute journaling.📊 Progress: Checked off 3 days in a row!🧠 What I Learned: Discipline is like a muscle—each day strengthens it.One day at a time, we’re building something better. 🔗 Who else is crushing their habits? Let’s inspire each other! 💬",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600]),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[600]!),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.thumb_up_alt_sharp,
                                        size: 16,
                                        color: Colors.grey[600],
                                      ),
                                      Text("838"),
                                      VerticalDivider(
                                        width: 2,
                                      ),
                                      Icon(
                                        Icons.message,
                                        size: 16,
                                        color: Colors.grey[600],
                                      ),
                                    ],
                                  )),
                              Container(
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[600]!),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Icon(
                                      Icons.share,
                                      size: 17,
                                      color: Colors.grey[600],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            HomeCard(
              name: "hack a addict",
              profilePic:
                  "https://i.ibb.co/PDVj050/Whats-App-Image-2025-01-19-at-02-33-02-4b85b798.jpg",
              content:
                  "The ultimate playground for innovation has opened its doors!✨ Witness the brightest minds come together to create,💡 compete, and solve the impossible in this electrifying 24-hour hackathon. 🚀 ",
              postImage:
                  "https://i.ibb.co/jM6FXZs/Whats-App-Image-2025-01-19-at-06-37-28-69fd14a0.jpg",
              commentCount: 10,
              likeCoout: 220,
              minutes: "20",
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
