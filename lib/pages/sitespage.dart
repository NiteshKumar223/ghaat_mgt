import 'package:flutter/material.dart';
import '../customui/CustomSitesStripe.dart';
import '../customui/CustomSitesWidget.dart';
import '../models/ModelGhaat.dart';

class SitesPage extends StatefulWidget {
  const SitesPage({super.key});

  @override
  State<SitesPage> createState() => _SitesPageState();
}

class _SitesPageState extends State<SitesPage> {
  @override
  Widget build(BuildContext context) {
    final dummyghaatdata =
        List.generate(15, (index) => GhaatData.modelghaats[0]);

    return Column(children: [
      const CustomSitesStripe(),
      Expanded(
        child: ListView.builder(
            // itemCount: GhaatData.modelghaats.length,
            itemCount: dummyghaatdata.length,
            itemBuilder: (context, index) {
              return CustomSitesWidget(
                // admindata: GhaatData.modelghaats[index],
                ghaatdata: dummyghaatdata[index],
              );
            }),
      ),
    ]);
  }
}
