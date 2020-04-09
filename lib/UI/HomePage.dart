import 'package:flutter/material.dart';
import 'package:foody_ui/UI/DeatilsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget customMenu(var img, var text, var price) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DeatilsPage(img, text, price)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 100,
              width: 120,
              child: Image(
                image: AssetImage(img),
              ),
            ),
            Container(
              width: 200,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          "₹ $price",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: null)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff03C3C0),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 22.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 80,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.filter_list, color: Colors.white),
                          Spacer(),
                          Icon(Icons.blur_on, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Healthy",
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2.1,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      " Food",
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                    ),
                    customMenu("images/pic6.png", "Salman Bowl", "65.00"),
                    customMenu("images/pic2.png", "Spring Bowl", "48.00"),
                    customMenu("images/pic3.png", "Avocado Bowl", "55.00"),
                    customMenu("images/pic2.png", "Berry Bowl", "45.00"),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border:
                            Border.all(color: Color(0xff000000), width: 1.0)),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border:
                            Border.all(color: Color(0xff000000), width: 1.0)),
                    child: Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Card(
                    color: Color(0xff0E031F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Container(
                      height: 75.0,
                      width: 150.0,
                      child: Center(
                          child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          letterSpacing: 1.75,
                          //fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
