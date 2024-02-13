import 'package:flutter/material.dart';
import 'package:ghmapp/utils/colors.dart';
import 'package:ghmapp/pages/login.dart';

import '../customui/CustomDrawerListtile.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                alignment: Alignment.topRight,
                width: 80.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/logo3.PNG')))),
            Column(children: [
              Text(
                "YOGESH SAXENA",
                style:
                    TextStyle(fontSize: 18, color: AppColor.colorPrimaryDark),
              ),
              SizedBox(height: 15),
              Text(
                "Super Administrator",
                style:
                    TextStyle(fontSize: 13, color: AppColor.colorPrimaryDark),
              ),
            ]),
          ],
        ),
        CustomDrawerListtile(
          drawerName: 'Profile',
          onTapp: () {},
        ),
        const Divider(),
        const HeadingTxt(heading: 'Sites'),
        CustomDrawerListtile(
          drawerName: 'Supervisor Admin',
          onTapp: () {},
        ),
        CustomDrawerListtile(
          drawerName: 'Employees',
          onTapp: () {},
        ),
        CustomDrawerListtile(
          drawerName: 'Cancelled Pass',
          onTapp: () {},
        ),
        CustomDrawerListtile(
          drawerName: 'No Royalty Pass',
          onTapp: () {},
        ),
        const Divider(),
        const HeadingTxt(heading: 'Extra'),
        CustomDrawerListtile(
          drawerName: 'Payment History',
          onTapp: () {},
        ),
        CustomDrawerListtile(
          drawerName: 'Report',
          onTapp: () {},
        ),
        CustomDrawerListtile(
          drawerName: 'Notification',
          onTapp: () {},
        ),
        const Divider(),
        const HeadingTxt(heading: 'Other'),
        CustomDrawerListtile(
          drawerName: 'Setting',
          onTapp: () {},
        ),
        CustomDrawerListtile(
          drawerName: 'Logout',
          // Within the `FirstRoute` widget
          onTapp: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
        )
      ],
    );
  }
}
