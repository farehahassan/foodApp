// ignore_for_file: sort_child_properties_last

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_task/features/drawer/profile_drawer.dart';
import 'package:prac_task/features/history/view/history_screen.dart';
import 'package:prac_task/features/profile/view/profile_screen.dart';
import 'package:prac_task/utils/constants/color.dart';
import 'package:prac_task/common/components/custom_tab_bar.dart';
import 'package:prac_task/common/components/food_card.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.red,
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
          // ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOutCubicEmphasized,
      animationDuration: const Duration(milliseconds: 1000),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromARGB(148, 158, 158, 158),
            blurRadius: 20.0,
            spreadRadius: 15,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        backgroundColor: scaffold,
        appBar: AppBar(
          backgroundColor: scaffold,
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.grey,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          // title: Text('Advanced Drawer Example'),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu_rounded,
                    size: 30,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delicious\nfood for you",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchBar(
                hintText: "Search",
                hintStyle: WidgetStatePropertyAll(
                  GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),

                keyboardType: TextInputType.text,
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                elevation: WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(Colors.white54),
                // elevation: ,
                leading: Icon(
                  Icons.search,
                  color: black,
                  size: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTabController(
                length: 6,
                child: Expanded(
                  // Wrap the entire content in Expanded
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        width: 80,
                        // height: 40,
                        backgroundColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        // decoration: BoxDecoration(
                        //   border: Border(
                        //     bottom: BorderSide(
                        //       color: Colors.red,
                        //     ),
                        //   ),
                        // ),
                        unselectedLabelStyle: GoogleFonts.poppins(
                          color: Colors.grey,
                        ),
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        tabs: [
                          Tab(
                            // icon: Icon(Icons.directions_car),
                            text: "Foods",
                          ),
                          Tab(
                            // icon: Icon(Icons.directions_transit),
                            text: "Drinks",
                          ),
                          Tab(
                            text: "Snacks",
                          ),
                          Tab(
                            text: "Sauces",
                          ),
                          Tab(
                            text: "Chips",
                          ),
                          Tab(
                            text: "Dessert",
                          ),

                          // Tab(icon: Icon(Icons.directions_bike)),
                          // Tab(icon: Icon(Icons.directions_car)),
                          // Tab(icon: Icon(Icons.directions_transit)),
                          // Tab(icon: Icon(Icons.directions_bike)),
                          // Tab(icon: Icon(Icons.directions_transit)),
                          // Tab(icon: Icon(Icons.directions_bike)),
                          // Tab(icon: Icon(Icons.directions_transit)),
                          // Tab(icon: Icon(Icons.directions_bike)),
                        ],
                      ),
                      Expanded(
                        // Use Expanded here to allow TabBarView to fill available space
                        child: TabBarView(
                          children: <Widget>[
                            ListView(
                              children: [
                                Wrap(
                                  runAlignment: WrapAlignment.spaceEvenly,
                                  // crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.spaceBetween,
                                  children: [
                                    FoodCard(),
                                    FoodCard(),
                                    FoodCard(),
                                    FoodCard(),
                                    FoodCard(),
                                  ],
                                ),
                              ],
                            ),
                            Center(
                              child: Icon(Icons.directions_transit),
                            ),
                            Center(
                              child: Icon(Icons.directions_bike),
                            ),
                            Center(
                              child: Icon(Icons.directions_bike),
                            ),
                            Center(
                              child: Icon(Icons.directions_bike),
                            ),
                            Center(
                              child: Icon(Icons.directions_bike),
                            ),
                            // Add more TabBarView children as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            top: 100,
            bottom: 20,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => ProfileDrawer()));
                },
                child: drawerRows(
                    icon: Icons.co_present_outlined, name: "Profile"),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => HistoryScreen()));
                },
                child: drawerRows(
                    icon: Icons.shopping_cart_checkout_sharp, name: "Orders"),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => ProfileScreen()));
                },
                child: drawerRows(
                    icon: Icons.payments_outlined, name: "Payment Methods"),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              drawerRows(icon: Icons.tag, name: "Offers and Promo"),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              drawerRows(
                  icon: Icons.private_connectivity, name: "Privacy Policy"),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              drawerRows(icon: Icons.shield_outlined, name: "Security"),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              drawerRows(icon: Icons.logout, name: "Logout"),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerRows({
    required String name,
    required IconData icon,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: white,
          size: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ],
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
