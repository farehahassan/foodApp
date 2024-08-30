import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/common/components/custom_button.dart';
import 'package:prac_task/common/components/empty_screens.dart';
import 'package:prac_task/utils/constants/color.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffold,
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
          "Orders",
          style: GoogleFonts.poppins(
            fontSize: 18,
            color: black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
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
              title: "No Orders yet",
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
