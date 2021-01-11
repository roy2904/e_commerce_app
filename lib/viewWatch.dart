import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewWatch extends StatelessWidget {
  final String image;
  ViewWatch({this.image});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height / 3,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Tissot',
                      style: TextStyle(
                          color: Color.fromRGBO(97, 90, 90, .54),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Classic Men's Watch",
                      style: TextStyle(
                          color: Color.fromRGBO(97, 90, 90, 1),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Tissot excels at offering high-quality watches at relatively affordable price points. However, even by their standards, the Everytime is one of the best value watches on the market.",
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 0.54),
                        height: 1.4,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.red),
                              shape: BoxShape.circle,
                              color: Colors.white),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlue[900]),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.teal[900]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'More option',
                      style: TextStyle(
                          color: Color.fromRGBO(97, 90, 90, .54),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[300]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.teal[900]),
                                    child: Image.asset('assets/smartwatch.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Smart Watch',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        '\$ 999',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, .7),
                                            fontSize: 13),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[300]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.pink[900]),
                                    child: Image.asset(
                                        'assets/watch.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Analog Watch',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        '\$ 1499',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, .7),
                                            fontSize: 13),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 10,
                                offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          gradient: LinearGradient(colors: [
                            Colors.teal[700],
                            Colors.teal[900],
                          ])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                '\$1499.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('54',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Text(
                            'Pay',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ))),
          ),
        ],
      ),
    );
  }
}
