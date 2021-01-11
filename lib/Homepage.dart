import 'package:flutter/material.dart';
import 'Widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.only(left: 25, right: 25, top: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(255, 250, 182, 1),
                    Color.fromRGBO(255, 239, 78, 1)
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/menu.png', width: 20),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Best Online \nWatch Collections',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          'assets/Watch no bg.png',
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -35),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 8,
                ),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search, color: Colors.black, size: 20),
                  border: InputBorder.none,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Choose \na category',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              onPressed: () {},
                              padding: EdgeInsets.all(10),
                              color: Color.fromRGBO(251, 53, 105, 0.1),
                              child: Text(
                                'Men',
                                style: TextStyle(
                                  color: Color.fromRGBO(251, 53, 105, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              onPressed: () {},
                              padding: EdgeInsets.all(10),
                              color: Color.fromRGBO(97, 90, 90, 0.1),
                              child: Text(
                                'Women',
                                style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, 0.6),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20,bottom: 20),
                children: <Widget>[
                  makeCard(
                    context: context,
                    startColor: Color.fromRGBO(251, 121, 155, 1),
                    endColor: Color.fromRGBO(251, 53, 105, 1),
                    image: 'assets/Watch 1.jpg'
                  ),
                  makeCard(
                    context: context,
                    startColor: Color.fromRGBO(251, 121, 155, 1),
                    endColor: Color.fromRGBO(251, 53, 105, 1),
                    image: 'assets/Watch 2.jpg'
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
