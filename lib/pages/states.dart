import 'package:covid19_tracker/datasource.dart';
import 'package:covid19_tracker/models/indiastatesmod.dart';
import 'package:covid19_tracker/services/indiastateser.dart';
import 'package:flutter/material.dart';

class IndiaPannel extends StatefulWidget {
  @override
  _IndiaPannelState createState() => _IndiaPannelState();
}

class _IndiaPannelState extends State<IndiaPannel> {
  StatesService statesService = StatesService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('India States Status'),
        backgroundColor: primaryBlack,
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: statesService.getStateData(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              StatesResponse statesResponse = snapshot.data;

              return ListView.builder(
                itemCount: statesResponse.data.regional.length,
                itemBuilder: (_, index) {
                  return ExpansionTile(
                    title: Text(
                      statesResponse.data.regional[index].loc,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    children: <Widget>[
                      Text(
                        'CONFIRMED : ' +
                            statesResponse
                                .data.regional[index].confirmedCasesIndian
                                .toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'DISCHARGED : ' +
                            statesResponse.data.regional[index].discharged
                                .toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'DEATHS : ' +
                            statesResponse.data.regional[index].deaths
                                .toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellow[800],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
