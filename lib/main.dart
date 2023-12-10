import 'package:business_card/ProductWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/fawry.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi, Ahmed'),
                            Text('Sohag, Ain Shams')
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.add_alert)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Search For A medicine A specific Product',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.qr_code_scanner)),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_rounded,
                              size: 40,
                            ))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ImageSlideshow(
                      indicatorColor: Colors.green,
                      indicatorBackgroundColor: Colors.grey,
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset('assets/images/default_img.jpeg'),
                        Image.asset('assets/images/fawry.png'),
                        Image.asset('assets/images/panadol.png')
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  //--------------Start of Categories-------------------------
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pand',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 30),

                        ),
                        Text(
                          'More',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  child: Card(
                                      color: Colors.grey[200],
                                      child: Image.asset(
                                        'assets/images/fawry.png',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                              Text(
                                'Pand',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  //  -------------------------Start of Items List
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.centerLeft,
                    child: Text('Categories',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                          description: 'Hello',
                          price: 400,
                          imagePath: 'assets/images/panadol.png',
                        );
                      },
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
