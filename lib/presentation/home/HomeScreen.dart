import 'package:dotswallet/presentation/home/Dashboard.dart';
import 'package:dotswallet/presentation/scanner/Scanner.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dotswallet",
              style: TextStyle(color: Colors.blue, letterSpacing: 1.5)),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.verified_user),
            )
          ],
          leading: IconButton(
            color: Colors.grey,
            icon: Icon(Icons.scanner),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScanAndPay()),
              );
            },
          ),
        ),
        body: Stack(
          children: <Widget>[
            DashBoard(),
            SlidingUpPanel(
              minHeight: MediaQuery.of(context).size.height / 3,
              maxHeight: MediaQuery.of(context).size.height,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              panel: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 35,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      )
                    ],
                  ),
                  Text("hello there")
                ],
              ),
            ),
          ],
        ));
  }
}
