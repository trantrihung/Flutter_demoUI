import 'package:flutter/material.dart';
import 'package:ui_app/pet_app/model/menu_items.dart';
import 'package:ui_app/pet_app/screen/Profile_screen.dart';
import 'package:ui_app/pet_app/screen/Search_screen.dart';
import 'package:ui_app/pet_app/screen/detail_screen.dart';
import 'package:ui_app/pet_app/screen/home_screen.dart';

class PetApp extends StatefulWidget {
  final String title;
  const PetApp({super.key, required this.title});

  @override
  State<PetApp> createState() => _PetAppState();
}

class _PetAppState extends State<PetApp> {
  int _currentIndex = 0;
  final List<Widget> screen = [
    HomeScreen(),
    Search(),
    Profile(),
    DetailScreen(),
  ];

  final List<Map<String, dynamic>> menuItem = [
    {
      "title": "Dashboard",
      "icon": Icons.dashboard,
    },
    {
      "title": "Search",
      "icon": Icons.search,
    },
    {
      "title": "Chat",
      "icon": Icons.chat,
    },
    {
      "title": "Profile",
      "icon": Icons.person,
    },
  ];

  final List<MenuItems> menu = [
    MenuItems(title: "Dashboard", icon: Icon(Icons.dashboard)),
    MenuItems(title: "Chat", icon: Icon(Icons.chat)),
    MenuItems(title: "Search", icon: Icon(Icons.search)),
    MenuItems(title: "Profile", icon: Icon(Icons.person)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.amber,
        // fixedColor: Colors.green,
        //! Làm cho màu chữ menu ko bị trong suốt
        type: BottomNavigationBarType.fixed,

        //? Này là dùng với Mảng chứa Object của Class MenuItem
        items: menu.map((item) {
          return BottomNavigationBarItem(
            icon: item.icon,
            label: item.title,
          );
        }).toList(),

        //? Này là dùng với Mảng chứa Object
        // menuItem.map((item) {
        //   return BottomNavigationBarItem(
        //     icon: Icon(item["icon"]),
        //     label: item["title"],
        //   );
        // }).toList(),
        currentIndex: _currentIndex,
        //! thay đổi background theo từng Widget BottomNavigationBarItem
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(index);
          });
        },

        // [
        // BottomNavigationBarItem(
        //   label: "Home",
        //   icon: Icon(Icons.home),
        // ),
        // BottomNavigationBarItem(
        //   label: "Search",
        //   icon: Icon(Icons.search),
        // ),
        // BottomNavigationBarItem(
        //   label: "Person",
        //   icon: Icon(Icons.person),
        // )
        // ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => print("abc"),
      //   tooltip: "Hungdaica",
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 10.0,
      //   child: Container(
      //     height: 60,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             MaterialButton(
      //               minWidth: 40,
      //               onPressed: () {
      //                 setState(() {
      //                   _currentIndex = 0;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     Icons.dashboard,
      //                     color:
      //                         _currentIndex == 0 ? Colors.amber : Colors.grey,
      //                   ),
      //                   Text(
      //                     "Dashboard",
      //                     style: TextStyle(
      //                       color:
      //                           _currentIndex == 0 ? Colors.amber : Colors.grey,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //             MaterialButton(
      //               minWidth: 40,
      //               onPressed: () {
      //                 setState(() {
      //                   _currentIndex = 1;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     Icons.chat,
      //                     color:
      //                         _currentIndex == 1 ? Colors.amber : Colors.grey,
      //                   ),
      //                   Text(
      //                     "Chat",
      //                     style: TextStyle(
      //                       color:
      //                           _currentIndex == 1 ? Colors.amber : Colors.grey,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             MaterialButton(
      //               minWidth: 40,
      //               onPressed: () {
      //                 setState(() {
      //                   _currentIndex = 0;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     Icons.dashboard,
      //                     color:
      //                         _currentIndex == 0 ? Colors.amber : Colors.grey,
      //                   ),
      //                   Text(
      //                     "Dashboard",
      //                     style: TextStyle(
      //                       color:
      //                           _currentIndex == 0 ? Colors.amber : Colors.grey,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //             MaterialButton(
      //               minWidth: 40,
      //               onPressed: () {
      //                 setState(() {
      //                   _currentIndex = 1;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(
      //                     Icons.chat,
      //                     color:
      //                         _currentIndex == 1 ? Colors.amber : Colors.grey,
      //                   ),
      //                   Text(
      //                     "Chat",
      //                     style: TextStyle(
      //                       color:
      //                           _currentIndex == 1 ? Colors.amber : Colors.grey,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
