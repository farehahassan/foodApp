import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/common/components/custom_button.dart';
import 'package:prac_task/features/favorites/view/favorites_screen.dart';
import 'package:prac_task/features/history/view/history_screen.dart';
import 'package:prac_task/utils/constants/color.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({super.key});

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scaffold,
      ),
      backgroundColor: scaffold,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My profile",
              style: GoogleFonts.poppins(
                fontSize: 25,
                color: black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal Details",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "change",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            personalDetailsCard(),
            SizedBox(
              height: 30,
            ),
            profileCards(
                settingName: "Orders",
                ontap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => FavoritesScreen()));
                }),

            profileCards(
                settingName: "Pending reviews",
                ontap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => HistoryScreen()));
                }),
            profileCards(settingName: "Faq", ontap: () {}),
            profileCards(settingName: "Help", ontap: () {}),

            SizedBox(
              height: 40,
            ),
            CustomButton(buttonName: "Updated", ontap: () {}),
            // profileCards(),
            // profileCards(),
            // profileCards(),
          ],
        ),
      ),
    );
  }

  Widget personalDetailsCard() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fareha Hassan",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
              Text(
                "fareha@gmail.com",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              Divider(
                  // color: Colors.black,
                  ),
              Text(
                "+9809789789",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              Divider(
                  // color: Colors.black,
                  ),
              SizedBox(
                width: 200,
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
    );
  }

  Widget profileCards({required String settingName, void Function()? ontap}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              settingName,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: black,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
