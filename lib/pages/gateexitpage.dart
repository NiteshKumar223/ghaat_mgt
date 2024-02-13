import 'package:flutter/material.dart';
import 'package:ghmapp/utils/colors.dart';
import '../customui/CustomSitesStripe.dart';
import '../models/ModelPass.dart';
import '../customui/CustomExitWidget.dart';

class GateExitPage extends StatefulWidget {
  const GateExitPage({super.key});

  @override
  State<GateExitPage> createState() => _GateExitPageState();
}

class _GateExitPageState extends State<GateExitPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final dummyexitdata = List.generate(15, (index) => ExitData.modelexits[0]);
    const itemCount = 15;
    TabController tabController = TabController(length: 3, vsync: this);

    return Column(children: [
      const CustomSitesStripe(),
      TabBar(
        controller: tabController,
        isScrollable: true,
        labelPadding: EdgeInsets.symmetric(horizontal: 25),
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
        child: Center(child: Text("Total Count : $itemCount")),
      ),
      Expanded(
        child: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              // itemCount: PassData.modelpasses.length,
              itemCount: dummyexitdata.length,
              itemBuilder: (context, index) {
                return CustomExitWidget(
                  // passdata: PassData.modelpasses[index],
                  exitdata: dummyexitdata[index],
                );
              },
            ),
            ListView.builder(
              // itemCount: PassData.modelpasses.length,
              itemCount: dummyexitdata.length,
              itemBuilder: (context, index) {
                return CustomExitWidget(
                  // passdata: PassData.modelpasses[index],
                  exitdata: dummyexitdata[index],
                );
              },
            ),
            ListView.builder(
              // itemCount: PassData.modelpasses.length,
              itemCount: dummyexitdata.length,
              itemBuilder: (context, index) {
                return CustomExitWidget(
                  // passdata: PassData.modelpasses[index],
                  exitdata: dummyexitdata[index],
                );
              },
            ),
          ],
        ),
      ),
    ]);
  }
}
