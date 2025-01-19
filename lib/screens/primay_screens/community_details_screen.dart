import 'package:beyond/core/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityDetailsScreen extends StatelessWidget {
  const CommunityDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1504309092620-4d0ec726efa4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGNvbG9yc3xlbnwwfHwwfHx8MA%3D%3D",
                      ),
                      fit:
                          BoxFit.cover, // Ensures the image fills the container
                    ),
                  ),
                ),
                Positioned(
                  top: 38,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black.withAlpha(120),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: kwhite,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 38,
                  right: 10,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black.withAlpha(120),
                    child: Center(
                      child: Icon(
                        Icons.more_vert_outlined,
                        size: 30,
                        color: kwhite,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 38,
                  right: 70,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black.withAlpha(120),
                    child: Center(
                      child: Icon(
                        Icons.share,
                        color: kwhite,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 38,
                  right: 130,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black.withAlpha(120),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: kwhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundImage: NetworkImage(
                                  "https://i.ibb.co/PDVj050/Whats-App-Image-2025-01-19-at-02-33-02-4b85b798.jpg"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "username",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600]),
                            ),
                            SizedBox(
                              width: 5,
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
                        Icon(Icons.more_vert_outlined)
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                    child: Text(
                      "Hack A Addict is Live",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[600]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: Text(
                      "The ultimate playground for innovation has opened its doors!✨ Witness the brightest minds come together to create,💡 compete, and solve the impossible in this electrifying 24-hour hackathon. 🚀",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
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
                                  border: Border.all(color: Colors.grey[600]!),
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
                                  Text("465"),
                                  VerticalDivider(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.thumb_down_sharp,
                                    size: 16,
                                    color: Colors.grey[600],
                                  ),
                                ],
                              )),
                          Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[600]!),
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
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage(
                                "https://i.ibb.co/PDVj050/Whats-App-Image-2025-01-19-at-02-33-02-4b85b798.jpg"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "username",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(
                            width: 5,
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
                      Icon(Icons.more_vert_outlined)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                height: 30,
                child: Text(
                  "Register Now : https://antidrughackathon.com/",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.ibb.co/x7xvTkZ/Whats-App-Image-2025-01-19-at-03-27-18-97500d65.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
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
                              border: Border.all(color: Colors.grey[600]!),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.thumb_up_alt_sharp,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              Text("270"),
                              VerticalDivider(
                                width: 2,
                              ),
                              Icon(
                                Icons.thumb_down_sharp,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                            ],
                          )),
                      Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[600]!),
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
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage(
                                "https://i.ibb.co/PDVj050/Whats-App-Image-2025-01-19-at-02-33-02-4b85b798.jpg"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "hack a addict",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(
                            width: 5,
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
                      Icon(Icons.more_vert_outlined)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                height: 30,
                child: Text(
                  "Register Now : https://antidrughackathon.com/",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.ibb.co/m8HKbBG/Whats-App-Image-2025-01-19-at-03-27-18-4880fd45.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
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
                              border: Border.all(color: Colors.grey[600]!),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.thumb_up_alt_sharp,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              Text("765"),
                              VerticalDivider(
                                width: 2,
                              ),
                              Icon(
                                Icons.thumb_down_sharp,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                            ],
                          )),
                      Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[600]!),
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
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage(
                                "https://i.ibb.co/PDVj050/Whats-App-Image-2025-01-19-at-02-33-02-4b85b798.jpg"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "hack a addict",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(
                            width: 5,
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
                      Icon(Icons.more_vert_outlined)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: double.infinity,
                height: 30,
                child: Text(
                  "Registrations extended till 28/12/2024",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[600]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.ibb.co/Sw6sjv8/Whats-App-Image-2025-01-19-at-03-27-19-29eaf86f.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
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
                              border: Border.all(color: Colors.grey[600]!),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.thumb_up_alt_sharp,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              Text("154"),
                              VerticalDivider(
                                width: 2,
                              ),
                              Icon(
                                Icons.thumb_down_sharp,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                            ],
                          )),
                      Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[600]!),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
