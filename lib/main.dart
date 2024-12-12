import 'package:flutter/material.dart';
import 'package:wrokout_planner/pages/add_newpage.dart';
import 'package:wrokout_planner/pages/favourite_page.dart';
import 'package:wrokout_planner/pages/home_page.dart';
import 'package:wrokout_planner/pages/profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const AddNewpage(),
    const FavouritePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Gym Guru",
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "ADD"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
          body: _pages[_currentIndex],
        ));
  }
}
