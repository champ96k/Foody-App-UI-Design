import 'package:flutter/material.dart';

class DeatilsPage extends StatefulWidget {
  final img, title, price;
  DeatilsPage(this.img, this.title, this.price);
  @override
  _DeatilsPageState createState() =>
      _DeatilsPageState(this.img, this.title, this.price);
}

class _DeatilsPageState extends State<DeatilsPage> {
  var img, title, price;
  _DeatilsPageState(this.img, this.title, this.price);

  int itemCoutn = 1;

  Widget customCard(
      var text, var subtext, var backgroundcolor, var textcolor, var unit) {
    return Card(
      child: Container(
          height: 170,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Color(backgroundcolor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey, width: 1.0)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 8.0),
                      child: Text(
                        text.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(textcolor),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        subtext + "\n $unit",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(textcolor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff81A3FB),
          body: ListView(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 22.0),
                  child: ListTile(
                    leading: IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    title: Text(
                      "Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.1,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  )),
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height - 82.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                  ),
                  Positioned(
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width,
                    top: 75.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    left: (MediaQuery.of(context).size.width / 2) - 100.0,
                    child: Container(
                      child: Image(
                        height: 200,
                        width: 200,
                        image: AssetImage(img),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240.0,
                    left: 50,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 310.0,
                    left: 40,
                    right: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "₹ $price",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 2.0,
                          color: Colors.grey[300],
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff7EA0F6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.add),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 400.0,
                      right: 20,
                      left: 20,
                      child: Container(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: <Widget>[
                                customCard("WEIGHT", "300", 0xff7A9BEF,
                                    0xFFFFFFFF, "G"),
                                customCard("Calories", "267", 0xFFFFFFFF,
                                    0xffA9A9A9, "CAL"),
                                customCard("Vitamin", "300", 0xFFFFFFFF,
                                    0xffA9A9A9, "VIT"),
                                customCard("WEIGHT", "300", 0xFFFFFFFF,
                                    0xffA9A9A9, "G"),
                                customCard("Calories", "300", 0xFFFFFFFF,
                                    0xffA9A9A9, "CAL"),
                              ]))))
                ],
              )
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                color: Color(0xff0E031F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  height: 75.0,
                  width: 150.0,
                  child: Center(
                      child: Text(
                    "₹ $price",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                  )),
                ),
              ),
            ),
          )),
    );
  }
}
