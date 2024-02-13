import 'package:flutter/material.dart';
import 'package:ghmapp/utils/colors.dart';

class CustomDrawerListtile extends StatelessWidget {
  final String drawerName;
  final VoidCallback onTapp;

  const CustomDrawerListtile({
    super.key,
    required this.drawerName,
    required this.onTapp,
    });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          drawerName, 
          style: TextStyle(
            fontSize: 16,
            color: AppColor.colorBlue,
          ),),
      ),
      onTap: onTapp,
    );
  }
}
class HeadingTxt extends StatelessWidget {
  final String heading;
  const HeadingTxt({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}