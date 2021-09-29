import 'package:covid19_tracker/datasource.dart';
import 'package:flutter/material.dart';

class FAQPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
        backgroundColor: primaryBlack,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    DataSource.questionAnswers[index]['answer'],
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
