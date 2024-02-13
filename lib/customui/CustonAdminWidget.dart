import 'package:flutter/material.dart';

import '../models/ModelAdmin.dart';
import '../utils/colors.dart';

class CustomAdminWidget extends StatelessWidget {
  final ModelAdmin admindata;
  const CustomAdminWidget({super.key, required this.admindata});

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
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: 70,
            width: 35,
            color: AppColor.colorPrimaryLight,
            child: Center(
              child: Icon(
                Icons.person,
                size: 30,
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
                      admindata.adminName,
                      style: TextStyle(
                        color: AppColor.colorPrimaryText,
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
                      admindata.adminRole,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Status:',
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      admindata.adminStatus,
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
                      admindata.adminContact,
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Activated On:',
                      style: TextStyle(
                        color: AppColor.colorSecondaryText,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      admindata.adminActivatedOn,
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
