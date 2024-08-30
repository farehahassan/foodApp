import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/common/components/custom_button.dart';
import 'package:prac_task/features/cart/cart_screen.dart';
import 'package:prac_task/utils/constants/color.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffold,
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: Icon(
                isLiked == true
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                color: isLiked == true ? Colors.red : black,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            // vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/food.png",
                width: 300,
                fit: BoxFit.cover,
              ),
              // SizedBox(
              //     // height: 10,
              //     ),
              Text(
                "Veggie Tomato mix",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "9000\$",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Info",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Return Policy",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: black,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CustomButton(
                  buttonName: "Add to Cart",
                  ontap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => CartScreen()));
                  }),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
