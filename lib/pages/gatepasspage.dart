import 'package:flutter/material.dart';
import 'package:ghmapp/utils/colors.dart';
import '../customui/CustomPassWidget.dart';
import '../customui/CustomSitesStripe.dart';
import '../models/ModelPass.dart';

class GatePassPage extends StatefulWidget {
  const GatePassPage({super.key});

  @override
  State<GatePassPage> createState() => _GatePassPageState();
}

class _GatePassPageState extends State<GatePassPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final dummypassdata = List.generate(15, (index) => PassData.modelpasses[0]);

    TabController tabController = TabController(length: 3, vsync: this);

    return Column(children: [
      const CustomSitesStripe(),
      TabBar(
        controller: tabController,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 25),
        tabs: <Widget>[
          Tab(
              child: Text(
            'TODAY',
            style: TextStyle(color: AppColor.colorSecondaryText),
          )),
          Tab(
            child: Text(
              'LAST WEEK',
              style: TextStyle(color: AppColor.colorSecondaryText),
            ),
          ),
          Tab(
            child: Text(
              'EARLIER',
              style: TextStyle(color: AppColor.colorSecondaryText),
            ),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Center(child: Text("Total Count : 15")),
      ),
      Expanded(
        child: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              // itemCount: PassData.modelpasses.length,
              itemCount: dummypassdata.length,
              itemBuilder: (context, index) {
                return CustomPassWidget(
                  // passdata: PassData.modelpasses[index],
                  passdata: dummypassdata[index],
                );
              },
            ),
            ListView.builder(
              // itemCount: PassData.modelpasses.length,
              itemCount: dummypassdata.length,
              itemBuilder: (context, index) {
                return CustomPassWidget(
                  // passdata: PassData.modelpasses[index],
                  passdata: dummypassdata[index],
                );
              },
            ),
            ListView.builder(
              // itemCount: PassData.modelpasses.length,
              itemCount: dummypassdata.length,
              itemBuilder: (context, index) {
                return CustomPassWidget(
                  // passdata: PassData.modelpasses[index],
                  passdata: dummypassdata[index],
                );
              },
            ),
          ],
        ),
      ),
    ]);
  }
}
