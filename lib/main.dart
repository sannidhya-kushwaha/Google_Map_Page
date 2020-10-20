import 'package:flutter/material.dart';

void main() {
  runApp(GoogleMapPage());
}

class GoogleMapPage extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Silicon Valley is a region in the southern part of the San Francisco Bay Area in Northern California that serves as a global center for high technology, innovation, venture capital, and social media. It corresponds roughly to the geographical Santa Clara Valley. San Jose is Silicon Valley's largest city, the third-largest in California, and the tenth-largest in the United States; other major Silicon Valley cities include Sunnyvale, Santa Clara, Redwood City, Mountain View, Palo Alto, Menlo Park, and Cupertino. The San Jose Metropolitan Area has the third-highest GDP per capita in the world (after Zurich, Switzerland and Oslo, Norway), according to the Brookings Institution.",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildbuttonColumn(color, Icons.call, 'CALL'),
          _buildbuttonColumn(color, Icons.near_me, 'ROUTE'),
          _buildbuttonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Google Head Quarters',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Mountain View, California, USA',
                  style: TextStyle(color: Colors.grey[505]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );
    return MaterialApp(
      title: 'Google Map Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Googleplex"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/google.jpg',
              width: 600,
              height: 241,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildbuttonColumn(Color color, IconData, String lable) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(IconData, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            lable,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
