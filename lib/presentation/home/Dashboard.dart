import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
          child: Image.network(
              "http://chart.apis.google.com/chart?cht=qr&chs=150x150&chl=fefgg&chld=H|0"),
        ),
        Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.purple]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 5.0,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Balance:",
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 30,
                            letterSpacing: 1.2))),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("1555",
                        style: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 45,
                            letterSpacing: 1.2)))
              ],
            ))
      ],
    ));
  }
}
