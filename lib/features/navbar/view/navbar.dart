import 'package:flutter/material.dart';
import 'package:prac_task/features/drawer/view/drawer_screen.dart';
import 'package:prac_task/features/favorites/view/favorites_screen.dart';
import 'package:prac_task/features/history/view/history_screen.dart';
import 'package:prac_task/features/profile/view/profile_screen.dart';
import 'package:prac_task/utils/constants/color.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  // List of pages that will correspond to the selected index
  final List<Widget> _pages = [
    DrawerScreen(),
    FavoritesScreen(),
    ProfileScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red, // Highlight color for the selected icon

        unselectedItemColor: Colors.grey, // Color for unselected icons
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // Remove the label to match the visual
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '', // Remove the label to match the visual
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '', // Remove the label to match the visual
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '', // Remove the label to match the visual
          ),
        ],
        backgroundColor: scaffold,
        elevation: 0, // For a subtle shadow effect
      ),
    );
  }
}

// Dummy pages for each tab
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Home Page'),
//     );
//   }
// }

// class FavoritesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Favorites Page'),
//     );
//   }
// }

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page'),
    );
  }
}

void main() => runApp(MaterialApp(
      home: CustomBottomNavBar(),
    ));
