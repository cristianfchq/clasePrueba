import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job',
      home: Scaffold(
        body: _ourDesign(),
      ),
    );
  }

  Widget _ourDesign() {
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          _firstPart(),
          _secondPart(),
          _thirdpart(Icons.text_format, Colors.black, "Product Designer", "Acme inc."),
          _thirdpart(Icons.wb_sunny, Color(0xff6AD7E8), "UI Designer", "Aloha Corp"),
          _thirdpart(Icons.language, Color(0xffFF5972), "Shot Poster", "Dribble"),
          _thirdpart(Icons.text_format, Colors.black, "Product Designer", "Acme inc."),
          _thirdpart(Icons.wb_sunny, Color(0xff6AD7E8), "UI Designer", "Aloha Corp"),
          _thirdpart(Icons.language, Color(0xffFF5972), "Shot Poster", "Dribble"),
        ],
      ),
    );
  }

  Widget _firstPart() {
    return Container(
      // color: Color(0xff6540E9),
      decoration: BoxDecoration(
          color: Color(0xff6540E9),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
      child: Column(
        children: <Widget>[
          _search(),
          _name(),
          _callAndTest(Icons.call, "Call with Acme Inc.", "Tomorrow - 9:30 AM"),
          _callAndTest(
              Icons.description, "Test with Aloha Corp", "Tomorrow - 11:30 AM"),
          SizedBox(
            height: 75,
          ),
        ],
      ),
    );
  }

  Widget _search() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            Expanded(
              child: Text(
                "Jobfinder",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _name() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 15,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hey Guillaume",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Whats coming this week so far",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffAC98F3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _callAndTest(IconData icono, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 28),
      child: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            children: <Widget>[
              Icon(
                icono,
                color: Color(0xff6540E9),
              ),
              SizedBox(
                width: 13,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffAC98F3),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Color(0xffFF7300),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _secondPart() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "My Application",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Details",
            style: TextStyle(
                color: Color(0xffFF7300), fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _thirdpart(IconData icono, Color colorBox, String title, String subtitulo) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xfff6f6fb),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: colorBox,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icono,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitulo,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffAC98F3),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.thumb_up,
                color: Color(0xffAC98F3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
