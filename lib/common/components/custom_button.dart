import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/utils/constants/color.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback ontap;
  const CustomButton(
      {super.key, required this.buttonName, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
