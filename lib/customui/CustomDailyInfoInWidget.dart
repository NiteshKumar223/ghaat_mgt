
import 'package:flutter/material.dart';

import '../models/ModelDailyVehicle.dart';
import '../utils/colors.dart';

class CustomDailyInfoInWedget extends StatelessWidget {
  final ModelDailyVehicle dailyvehindata;
  const CustomDailyInfoInWedget({super.key, required this.dailyvehindata});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: screenWidth *0.5,
        height: 130,
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        margin: const EdgeInsets.only(
          top: 5.0,
        ),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: AppColor.colorDivider))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(dailyvehindata.vehType, style: const TextStyle(fontSize: 13.0),),
            VerticalDivider(
              thickness: 1,
              color: AppColor.colorDivider,
            ),
            Text(dailyvehindata.vehCountIn.toString(), style:  const TextStyle(fontSize: 13.0)),
            VerticalDivider(
              thickness: 1,
              color: AppColor.colorDivider,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("TONNS: ${dailyvehindata.saleTon}", style: const TextStyle(fontSize: 13.0)),
                Container(height: 1.0, color: AppColor.colorDivider, width: 100),
                Text("CMT: ${dailyvehindata.saleMetre}", style: const TextStyle(fontSize: 13.0)),
                Container(height: 1.0, color: AppColor.colorDivider, width: 100),
                Text("CFT: ${dailyvehindata.saleFeet}", style: const TextStyle(fontSize: 13.0)),
                Container(height: 1.0, color: AppColor.colorDivider, width: 100),
                Text("BUC: ${dailyvehindata.saleBucket}", style: const TextStyle(fontSize: 13.0)),
              ],
            )
          ],
        ));
  }
}
