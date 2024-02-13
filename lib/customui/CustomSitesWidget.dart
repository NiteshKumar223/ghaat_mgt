import 'package:flutter/material.dart';

import '../models/ModelGhaat.dart';
import '../utils/colors.dart';

class CustomSitesWidget extends StatelessWidget {
  final ModelGhaat ghaatdata;
  const CustomSitesWidget({super.key, required this.ghaatdata});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      margin: const EdgeInsets.only(
        top: 5,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1.0, color: AppColor.colorDivider))),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            width: 30,
            // margin: EdgeInsets.only(left: 8),
            child: Center(
              child: Image.asset(
                'assets/images/digger4.png',
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    ghaatdata.ghaatName,
                    style: TextStyle(
                      color: AppColor.colorPrimaryText,
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 330,
                child: Row(
                  children: [
                    Text(
                      ghaatdata.ghaatLessee,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      ghaatdata.ghaatStatusText,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      ghaatdata.ghaatStatus,
                      style: TextStyle(
                        color: AppColor.colorBlue,
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
                      ghaatdata.regNo,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      ghaatdata.ghaatActivetedTillText,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      ghaatdata.ghaatActivatedTill,
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
