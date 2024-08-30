import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/common/components/custom_button.dart';
import 'package:prac_task/utils/constants/color.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffold,
      appBar: AppBar(
        backgroundColor: scaffold,
        centerTitle: true,
        title: Text(
          "Cart",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            cartCard(),
            cartCard(),
            cartCard(),
            Spacer(),
            CustomButton(buttonName: "Complete Order", ontap: () {}),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget cartCard() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        int quantity = 1;

        void increaseQuantity() {
          setState(() {
            quantity++;
          });
        }

        void decreaseQuantity() {
          if (quantity > 1) {
            setState(() {
              quantity--;
            });
          }
        }

        return Container(
          margin: EdgeInsets.only(bottom: 20),
          width: 315,
          height: 100,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/food.png",
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Veggie Tomato mix",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$10.00",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                onPressed: decreaseQuantity,
                              ),
                              Text(
                                "$quantity",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: black,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                onPressed: increaseQuantity,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
