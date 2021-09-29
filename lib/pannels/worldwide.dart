import 'package:flutter/material.dart';

class WorldwidePannel extends StatelessWidget {
  
  final Map worldData;

  const WorldwidePannel({Key key, this.worldData}) : super(key: key);

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
            count: worldData['cases'].toString(),
          ),
          StatusPannel(
            title: 'ACTIVE',
            pannelColor: Colors.cyan[100],
            textColor: Colors.blue,
            count: worldData['active'].toString(),
          ),
          StatusPannel(
            title: 'RECOVERED',
            pannelColor: Colors.green[100],
            textColor: Colors.green,
            count: worldData['recovered'].toString(),
          ),
          StatusPannel(
            title: 'DEATHS',
            pannelColor: Colors.grey[400],
            textColor: Colors.grey[700],
            count: worldData['deaths'].toString(),
          ),
        ],
      ),
    );
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
      margin: EdgeInsets.all(10.0),
      color: pannelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
