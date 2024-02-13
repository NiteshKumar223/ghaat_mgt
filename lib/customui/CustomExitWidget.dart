import 'package:flutter/material.dart';

import '../models/ModelPass.dart';
import '../utils/colors.dart';

class CustomExitWidget extends StatelessWidget {
  final ModelPass exitdata;
  const CustomExitWidget({super.key, required this.exitdata});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // width: screenWidth *0.5,
      height: 70,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      margin: const EdgeInsets.only(
        top: 5.0,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1.0, color: AppColor.colorDivider))),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: Center(
              child: Image.asset(
                'assets/images/dumperloaded.png',
                height: 30,
                width: 30,
                color: AppColor.colorPrimaryMid,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 330,
                child: Row(
                  children: [
                    Text(
                      exitdata.passNo,
                      style: TextStyle(
                        color: AppColor.colorPrimaryText,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Exit:',
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      exitdata.passExit.toString(),
                      style: TextStyle(
                        color: AppColor.colorRed,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 330,
                child: Row(
                  children: [
                    Text(
                      exitdata.passVehNo,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Order Qty:',
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      exitdata.passOrderQty,
                      style: TextStyle(
                        color: AppColor.colorRed,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 330,
                child: Row(
                  children: [
                    Text(
                      exitdata.passEmm.toString(),
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Material:',
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      exitdata.passMaterialType,
                      style: TextStyle(
                        color: AppColor.colorRed,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
