import 'package:flutter/material.dart';
import 'package:ghmapp/customui/CustomSitesStripe.dart';
import 'package:ghmapp/utils/colors.dart';
import 'package:ghmapp/models/ModelAdmin.dart';

import '../customui/CustonAdminWidget.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    final dummyadmindata = List.generate(15, (index) => AdminData.modeladmins[0]);

    return Column(children: [
      const CustomSitesStripe(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            print('Add New Admin Button Clicked');
          }, //onPressed

          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.colorWhite,
              elevation: 0,
              fixedSize: const Size(300, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(width: 1, color: AppColor.colorBlue),
              )),
          child: Text(
            'Add New Admin',
            style: TextStyle(fontSize: 15, color: AppColor.colorBlack),
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
            // itemCount: AdminData.modeladmins.length,
            itemCount: dummyadmindata.length,
            itemBuilder: (context, index) {
              return CustomAdminWidget(
                // admindata: AdminData.modeladmins[index],
                admindata: dummyadmindata[index],
              );
            }),
      ),
    ]);
  }
}
