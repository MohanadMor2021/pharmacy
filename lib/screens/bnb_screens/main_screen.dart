import 'package:flutter/material.dart';
import 'package:pharm_care/screens/bnb_screens/profile_screen.dart';
import 'package:pharm_care/screens/bnb_screens/upload_screen.dart';


import '../../components/constant.dart';
import '../../components/global_componnets.dart';
import 'cart_screen.dart';
import 'home_screen.dart';



class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

   List<Map<String, Object>>  _pages=[];
  int _selectedPageIndex = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': UploadScreen(),
      },
      {
        'page': CartScreen(),
      },

      {
        'page': ProfileScreen(),
      },
    ];
  }


  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: HomeScreen(),

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: primaryColor,
        ),

        items: [


         BottomNavigationBarItem(
           icon: // Icon(Icons.home_outlined),
           svgImage("home" , color:  _selectedPageIndex == 0 ? primaryColor : Colors.grey),
           label: "Home",
         ),


          BottomNavigationBarItem(
            icon: svgImage("upload" , color:  _selectedPageIndex == 1 ? primaryColor : Colors.grey),
            label: "upload",
          ),

          BottomNavigationBarItem(
            icon: svgImage("cart" , color:  _selectedPageIndex == 2 ? primaryColor : Colors.grey),
            label: "cart",
          ),

          BottomNavigationBarItem(
            icon: svgImage("profile" , color:  _selectedPageIndex == 3 ? primaryColor : Colors.grey),
            label: "profile",
          ),




        ],
      ),
    );
  }
}
