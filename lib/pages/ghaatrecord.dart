import 'package:flutter/material.dart';

import '../customui/CustomSitesWidget.dart';
import '../utils/colors.dart';
import '../models/ModelGhaat.dart';

class GhaatRecord extends StatefulWidget {
  const GhaatRecord({super.key});

  @override
  State<GhaatRecord> createState() => _GhaatRecordState();
}

class _GhaatRecordState extends State<GhaatRecord> {
  @override
  Widget build(BuildContext context) {
    final dummyghaatdata =
        List.generate(15, (index) => GhaatData.modelghaats[0]);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 12, left: 0),
            child: Text(
              'Ghaat Record',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: AppColor.colorBlack,
                fontSize: 24.0,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    // borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(3.0),
                  filled: true,
                  fillColor: AppColor.colorWhite,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                )),
          ],
        ),
        body: ListView.builder(
            // itemCount: GhaatData.modelghaats.length,
            itemCount: dummyghaatdata.length,
            itemBuilder: (context, index) {
              return CustomSitesWidget(
                // admindata: GhaatData.modelghaats[index],
                ghaatdata: dummyghaatdata[index],
              );
            }));
  }
}
