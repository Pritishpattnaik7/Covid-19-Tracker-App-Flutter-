import 'package:covid19_tracker/datasource.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlack,
        title: Text(
          "Contact Me",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/mypic.jpg',
              height: 250,
            ),
          ),
          Text(
            'PRITISH  PATTNAIK',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  launch('https://www.instagram.com/pritish.io/');
                },
                child: Container(
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 25,
                      offset: Offset(0, 10),
                    )
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CIcon(
                        IconMoon.icon_instagram,
                        color: Colors.pink,
                        size: 50,
                      ),
                      // Text(
                      //   'Write me at :',
                      //   style: TextStyle(color: Colors.orange),
                      //   textAlign: TextAlign.center,
                      // ),
                      SizedBox(height: 10,),
                      Text(
                        '@pritish.io' , style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110,
                width: 150,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 25,
                    offset: Offset(0, 10),
                  )
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CIcon(
                      IconMoon.icon_whatsapp1,
                      //color: Colors.orange,
                      size: 50,
                    ),
                    // Text(
                    //   'Call Me :',
                    //   style: TextStyle(color: Colors.orange),
                    //   textAlign: TextAlign.center,
                    // ),
                    SizedBox(height: 10,),
                    Text(
                      '91-9937316748',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  launch('https://www.facebook.com/pritish.pattnaik.07/');
                },
                child: Container(
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 25,
                      offset: Offset(0, 10),
                    )
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 55,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Facebook',
                        style: TextStyle(
                            color: Colors.blue[800], 
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      // Text(
                      //   'Facebook',
                      //   textAlign: TextAlign.center,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  launch('https://www.linkedin.com/in/pritish-pattnaik-5212291a9/');
                },
                child: Container(
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 25,
                      offset: Offset(0, 10),
                    )
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.blue[800],
                        size: 55,
                      ),
                      // Text(
                      //   'Locate me at :',
                      //   style: TextStyle(color: Colors.orange),
                      //   textAlign: TextAlign.center,
                      // ),
                      SizedBox(height: 10,),
                      Text(
                        'Connect with me in LinkedIn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 70,
          ),
          Text('© 2021 All Rights Reserved.'),
          Text('Developed by Pritish Pattnaik')
        ],
      ),
    );
  }
}
