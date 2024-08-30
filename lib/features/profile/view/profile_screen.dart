import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/common/components/custom_button.dart';
import 'package:prac_task/utils/constants/color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _selectedPaymentMethod = "Card";
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
          "My profile",
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
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Information",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            userCard(),
            SizedBox(
              height: 40,
            ),
            Text(
              "Payment Method",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            paymentMethodCard(),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              buttonName: "Update",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget userCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              // backgroundImage: AssetImage("assets/images/user.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fareha Hassan",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: black,
                  ),
                ),
                Text(
                  "fareha@gmail.com",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    softWrap: true,
                    "No 15 uti street off ovie palace road effurun delta state",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentMethodCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          _buildRadioTile("Card", Icons.credit_card, Colors.orange),
          Divider(),
          _buildRadioTile("Bank account", Icons.account_balance, Colors.pink),
          Divider(),
          _buildRadioTile("Paypal", Icons.paypal, Colors.blue),
        ],
      ),
    );
  }

  Widget _buildRadioTile(String title, IconData icon, Color color) {
    return RadioListTile(
      value: title,
      groupValue: _selectedPaymentMethod,
      onChanged: (value) {
        setState(() {
          _selectedPaymentMethod = value.toString();
        });
      },
      title: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 16), // Spacing between icon and text
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      activeColor: Colors.red,
      controlAffinity: ListTileControlAffinity
          .leading, // Places the radio button at the start
    );
  }
}
