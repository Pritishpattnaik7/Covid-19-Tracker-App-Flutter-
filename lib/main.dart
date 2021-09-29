

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'datasource.dart';

Color primaryBlack = Color(0xff202c3b);

void main() {
  runApp(MyApp());
}

//main app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 Tracker App',
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryBlack,
      ),
      home: HomePage(),
    );
  }
}

//homepage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('COVID-19 TRACKER'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 117,
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              color: Colors.orange[100],
              child: Text(
                '"Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less."',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Worldwide',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Container(
                    
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: primaryBlack,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text(
                      'Regional',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          WorldwidePannel(),
          ],
        )));
  }
}




//worldwide pannel
class WorldwidePannel extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2),
      children: <Widget>[
        StatusPannel(
          title: 'CONFIRMED',
          pannelColor: Colors.red[100],
          textColor: Colors.red,
          count: '1234',
        ),
        StatusPannel(
          title: 'ACTIVE',
          pannelColor: Colors.cyan[100],
          textColor: Colors.blue,
          count: '1234',
        ),
        StatusPannel(
          title: 'RECOVERED',
          pannelColor: Colors.green[100],
          textColor: Colors.green,
          count: '1234',
        ),
        StatusPannel(
          title: 'DEATHS',
          pannelColor: Colors.grey[400],
          textColor: Colors.grey[800],
          count: '1234',
        ),
      ],
    ));
  }
}

class StatusPannel extends StatelessWidget {

  final Color pannelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPannel({Key key, this.pannelColor, this.textColor, this.title, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 80,
      width: width / 2,
      color: pannelColor,
      margin: EdgeInsets.all(10),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: textColor,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
