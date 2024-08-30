import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/utils/constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: black,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: black, borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Connect to class",
                          style: GoogleFonts.plusJakartaSans(
                            color: white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Nice streak,\nAndrew",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 30,
                  color: black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainCards(
                    mainText: "Days\nin Tanning",
                    color: orange,
                    number: "255",
                  ),
                  MainCards(
                    mainText: "Completed\nCourses",
                    color: blue,
                    number: "12",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today Classes",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: black,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: black,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ClassesCards(
                      color: green,
                      className: "Design system in Figma",
                      name: "Andrew",
                    ),
                    ClassesCards(
                      color: purple,
                      className: "Animation in Protopie",
                      name: "Andrew",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainCards extends StatelessWidget {
  final String mainText;
  final String number;
  final Color color;
  const MainCards(
      {super.key,
      required this.mainText,
      required this.number,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainText,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              number,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 30,
                color: black,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 130,
              // color: black,
              decoration: BoxDecoration(
                // color: orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "24 days in a row",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassesCards extends StatelessWidget {
  final Color color;
  final String className;
  final String name;
  const ClassesCards(
      {super.key,
      required this.color,
      required this.className,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  className,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Ongoing",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Icon(
              Icons.face_retouching_natural,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
