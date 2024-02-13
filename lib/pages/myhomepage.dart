import 'package:flutter/material.dart';
import 'package:ghmapp/utils/colors.dart';

import 'NavigationDrawer.dart';
import 'adminpage.dart';
import 'dailyinfopage.dart';
import 'gateexitpage.dart';
import 'gatepasspage.dart';
import 'sitespage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var pagesdata = const [
    SitesPage(),
    AdminPage(),
    GatePassPage(),
    GateExitPage(),
    DailyInfoPage()
  ];
  int selecteditem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            'Ghaat Management',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: AppColor.colorBlack,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  // borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.all(3.0),
                filled: true,
                fillColor: AppColor.colorWhite,
              ),
            ),
          ),
        ),
      ),
      drawer: const Padding(
        padding: EdgeInsets.only(top: 25),
        child: Drawer(
          child: NavigationDrawer(),
        ),
      ),
      
      body: pagesdata[selecteditem],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20.0,
        unselectedItemColor: AppColor.colorPrimaryMid,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
        selectedItemColor: AppColor.colorBlue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/digger4.png',
              height: 30,
              width: 30,
              color: AppColor.colorPrimaryMid,
            ),
            activeIcon: Image.asset(
              'assets/images/digger4.png',
              height: 30,
              width: 30,
              color: AppColor.colorBlue,
            ),
            label: "Sites",
            tooltip: "Sites",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: "Admin",
            tooltip: "Admin",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/dumper2.png',
              height: 30,
              width: 30,
              color: AppColor.colorPrimaryMid,
            ),
            activeIcon: Image.asset(
              'assets/images/dumper2.png',
              height: 30,
              width: 30,
              color: AppColor.colorBlue,
            ),
            label: "Gate Pass",
            tooltip: "Gate Pass",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/dumperloaded.png',
              height: 30,
              width: 30,
              color: AppColor.colorPrimaryMid,
            ),
            activeIcon: Image.asset(
              'assets/images/dumperloaded.png',
              height: 30,
              width: 30,
              color: AppColor.colorBlue,
            ),
            label: "Gate Exit",
            tooltip: "Gate Exit",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/timeline1.png',
              height: 30,
              width: 30,
              color: AppColor.colorPrimaryMid,
            ),
            activeIcon: Image.asset(
              'assets/images/timeline1.png',
              height: 30,
              width: 30,
              color: AppColor.colorBlue,
            ),
            label: "Daily Info",
            tooltip: "Daily Info",
          ),
        ],
        currentIndex: selecteditem,
        onTap: (setValue) {
          setState(() { 
            selecteditem = setValue;
          });
        },
      ),
    );
  }
}
