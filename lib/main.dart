import 'package:business_card/ProductWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(),
        body: Center(
          child: ProductWidget(
            description:
                "Panadol | Extra Tablets for Pain and Fever | 24 Tabs ",
            price: 29,
            imagePath: "assets/images/panadol.png",
          ),
        ),
      ),
    );
  }
}
