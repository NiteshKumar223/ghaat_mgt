import 'package:flutter/material.dart';

import '../models/ModelDailyVehicle.dart';
import '../utils/colors.dart';

class CustomDailyInfoOutWedget extends StatelessWidget {
  final ModelDailyVehicle dailyvehoutdata;
  const CustomDailyInfoOutWedget({super.key, required this.dailyvehoutdata});

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
            Text(dailyvehoutdata.vehType, style: const TextStyle(fontSize: 13.0)),
            VerticalDivider(
              thickness: 1,
              color: AppColor.colorDivider,
            ),
            Text(dailyvehoutdata.vehCountOut.toString(), style: const TextStyle(fontSize: 13.0)),
            VerticalDivider(
              thickness: 1,
              color: AppColor.colorDivider,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("TONNS: ${dailyvehoutdata.saleTon}", style: const TextStyle(fontSize: 13.0)),
                Container(height: 1.0, color: AppColor.colorDivider, width: 100),
                Text("CMT: ${dailyvehoutdata.saleMetre}", style: const TextStyle(fontSize: 13.0)),
                Container(height: 1.0, color: AppColor.colorDivider, width: 100),
                Text("CFT: ${dailyvehoutdata.saleFeet}", style: const TextStyle(fontSize: 13.0)),
                Container(height: 1.0, color: AppColor.colorDivider, width: 100),
                Text("BUC: ${dailyvehoutdata.saleBucket}", style: const TextStyle(fontSize: 13.0)),
              ],
            )
          ],
        ));
  }
}
