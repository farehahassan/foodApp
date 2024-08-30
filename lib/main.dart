import 'package:flutter/material.dart';
import 'package:prac_task/bloc/equatable_prac.dart';
import 'package:prac_task/features/drawer/view/drawer_screen.dart';
import 'package:prac_task/features/home/view/home_page.dart';
import 'package:prac_task/features/navbar/view/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ChartPage(),
    CalendarPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          _buildBottomNavigationBarItem(Icons.home_outlined, "Home", 0),
          _buildBottomNavigationBarItem(Icons.bar_chart_outlined, "Chart", 1),
          _buildBottomNavigationBarItem(
              Icons.calendar_today_outlined, "Calendar", 2),
          _buildBottomNavigationBarItem(Icons.settings_outlined, "Settings", 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIndex == index ? Colors.black : Colors.transparent,
        ),
        padding: EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: _selectedIndex == index ? Colors.white : Colors.black,
        ),
      ),
      label: label,
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Home Page"),
//     );
//   }
// }

class ChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Chart Page"),
    );
  }
}

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Calendar Page"),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Settings Page"),
    );
  }
}
