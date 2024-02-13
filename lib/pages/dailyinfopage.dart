import 'package:flutter/material.dart';
import 'package:ghmapp/customui/CustomSitesStripe.dart';
import 'package:ghmapp/utils/colors.dart';

import '../customui/CustomDailyInfoInWidget.dart';
import '../customui/CustomDailyInfoOutWedghet.dart';
import '../models/ModelDailyVehicle.dart';

class DailyInfoPage extends StatefulWidget {
  const DailyInfoPage({super.key});

  @override
  State<DailyInfoPage> createState() => _DailyInfoPageState();
}

class _DailyInfoPageState extends State<DailyInfoPage>
    with TickerProviderStateMixin {
  DateTime firstdate = DateTime.now();
  DateTime seconddate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final dummydailyinfoindata = List.generate(
        15, (index) => DailyVehicleInData.modeldailyvehiclesin[0]);
    final dummydailyinfooutdata = List.generate(
        15, (index) => DailyVehicleOutData.modeldailyvehiclesout[0]);
    TabController tabController = TabController(length: 2, vsync: this);

    return Column(
      children: [
        CustomSitesStripe(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${firstdate.day}-${firstdate.month}-${firstdate.year}',
              style: const TextStyle(fontSize: 15),
            ),
            IconButton(
              onPressed: () async {
                DateTime? firstDate = await showDatePicker(
                  helpText: 'Select Start Date',
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
                // if 'click CANCEL' => Null
                if (firstDate == null) return;
                // if 'click OK' => DateTime
                setState(() => firstdate = firstDate);
              },
              icon: const Icon(Icons.arrow_drop_down, size: 30),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text('TO'),
            ),
            Text(
              '${seconddate.day}-${seconddate.month}-${seconddate.year}',
              style: const TextStyle(fontSize: 15),
            ),
            IconButton(
              onPressed: () async {
                DateTime? secondDate = await showDatePicker(
                  helpText: 'Select End Date',
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                // if 'click CANCEL' => Null
                if (secondDate == null) return;
                // if 'click OK' => DateTime
                setState(() => seconddate = secondDate);
              },
              icon: const Icon(Icons.arrow_drop_down, size: 30),
            ),
          ],
        ),
        Wrap(alignment: WrapAlignment.center, children: [
          SizedBox(
            height: 80,
            width: 180,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Total Sales',
                    style: TextStyle(color: AppColor.colorDarkGray),
                  ),
                  Text(
                    '( Royalty )',
                    style: TextStyle(color: AppColor.colorDarkGray),
                  ),
                  Text(
                    '38852.00 Ton',
                    style: TextStyle(color: AppColor.colorBlack),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 180,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Total Sales',
                    style: TextStyle(color: AppColor.colorDarkGray),
                  ),
                  Text(
                    '( No Royalty )',
                    style: TextStyle(color: AppColor.colorDarkGray),
                  ),
                  Text(
                    '50029.00 Ton',
                    style: TextStyle(color: AppColor.colorBlack),
                  ),
                ],
              ),
            ),
          ),
        ]),
        Container(
          color: AppColor.colorWhite,
          margin: const EdgeInsets.only(top: 5),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => openTotalSaleDialog(),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.colorPrimary,
                    fixedSize: const Size(300, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text(
                  'Calculate Your Profit',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: const [
              Text("Slip In: "),
              Text("3327"),
              Text(" / "),
              Text("Slip Out:"),
              Text("3209"),
            ]),
            TabBar(
              indicator: BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(),
                  color: AppColor.colorBlack),
              controller: tabController,
              isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(horizontal: 15),
              tabs: <Widget>[
                Tab(
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColor.colorPrimary,
                    child: Image.asset(
                      'assets/images/dumper2.png',
                      height: 30,
                      width: 30,
                      color: AppColor.colorWhite,
                    ),
                  ),
                ),
                Tab(
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColor.colorPrimary,
                    child: Image.asset(
                      'assets/images/dumperloaded.png',
                      height: 30,
                      width: 30,
                      color: AppColor.colorWhite,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Vehicle Type',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Text(
                          'Count (In)',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Text(
                        'Sales',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    // itemCount: DailyVehicleInData.modelvehicles.length,
                    itemCount: dummydailyinfoindata.length,
                    itemBuilder: (context, index) {
                      return CustomDailyInfoInWedget(
                        // passdata: DailyVehicleInData.modelvehicles[index],
                        dailyvehindata: dummydailyinfoindata[index],
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Vehicle Type',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Text(
                          'Count (Out)',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Text(
                        'Sales',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    // itemCount: DailyVehicleOutData.modelvehicles.length,
                    itemCount: dummydailyinfooutdata.length,
                    itemBuilder: (context, index) {
                      return CustomDailyInfoOutWedget(
                        // passdata: DailyVehicleOutData.modelvehicles[index],
                        dailyvehoutdata: dummydailyinfooutdata[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }

  openTotalSaleDialog() {
    return AlertDialog(
      title: const Text('Site : BHEDI KHARKA 23-14'),
      content: Wrap(
        runSpacing: 20,
        // direction: Axis.vertical,
        children: [
          Text(
              'Total Sale Between Date : ${firstdate.day}-${firstdate.month}-${firstdate.year} to ${seconddate.day}-${seconddate.month}-${seconddate.year}'),
          const Text('88881.00 Tons'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'CANCEL'),
          child: const Text('CANCEL'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
