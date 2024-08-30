import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/utils/constants/color.dart';

class EmptyScreens extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const EmptyScreens(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: Text(
            textAlign: TextAlign.center,
            softWrap: true,
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
