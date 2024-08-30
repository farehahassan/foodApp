import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/common/components/custom_button.dart';
import 'package:prac_task/common/components/empty_screens.dart';
import 'package:prac_task/utils/constants/color.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffold,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 20,
            color: black,
          ),
        ),
        title: Text(
          "History",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: scaffold,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EmptyScreens(
              image: "assets/images/empty_history.png",
              title: "No History yet",
              subtitle: "Hit the red button down below to create an order.",
            ),
            CustomButton(
              buttonName: "Start ordering",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
