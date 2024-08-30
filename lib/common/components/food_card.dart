import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/features/details/food_details_screen.dart';
import 'package:prac_task/utils/constants/color.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => FoodDetailsScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 10,
          right: 10,
          left: 10,
        ),
        width: 160,
        height: 230,
        // color: black,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              // ,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Veggie\nTomato mix",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "900\$",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                // top: 0,
                child: Image.asset(
              "assets/images/food.png",
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
  }
}
