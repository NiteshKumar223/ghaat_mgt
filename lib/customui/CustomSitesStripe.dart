import 'package:flutter/material.dart';
import 'package:ghmapp/pages/ghaatrecord.dart';

import '../utils/colors.dart';

class CustomSitesStripe extends StatelessWidget {
  final String siteName;
  const CustomSitesStripe({
    super.key,
    this.siteName = 'KHANGARRA PANWADI ( KHANGARRA MAHOBA UP )',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: AppColor.colorPrimaryMid,
      child: ListTile(
        leading: Icon(
          Icons.location_on,
          color: AppColor.colorWhite,
        ),
        title: Text(
          siteName,
          style: TextStyle(fontSize: 14, color: AppColor.colorWhite),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_drop_down,
            size: 40,
            color: AppColor.colorWhite,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GhaatRecord()),
            );
          },
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GhaatRecord()),
          );
        },
      ),
    );
  }
}
