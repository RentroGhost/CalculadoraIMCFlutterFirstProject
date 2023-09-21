import 'package:flutter/material.dart';
import 'package:trilhaapp/services/shared/widgets/app_images.dart';

class ListViewHorizontal extends StatefulWidget {
  const ListViewHorizontal({super.key});

  @override
  State<ListViewHorizontal> createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [Expanded(
          flex: 2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: 
            [Card(child: Image.asset(AppImages.coxinha)),
            Card(child: Image.asset(AppImages.captura2)),
            Card(child: Image.asset(AppImages.captura3)),
            Card(child: Image.asset(AppImages.captura1))],),
        ),
      Expanded(flex: 3, child: Container())
      ]
      ),
      );
  }
}