import 'package:dotswallet/presentation/home/Dashboard.dart';
import 'package:dotswallet/presentation/profile/Profile.dart';
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
          elevation: 0,
          title: Text("Dotswallet",
              style: TextStyle(color: Colors.blue, letterSpacing: 1.5)),
          backgroundColor: Colors.white,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 40,
                    width: 40,
                    child: CircleAvatar(child: Text("R"))),
              ),
            )
          ],
          leading: IconButton(
            color: Colors.grey,
            icon: Icon(Icons.center_focus_weak),
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
                  SizedBox(height: 10),
                  ListTile(
                      leading: CircleAvatar(
                          child: Icon(Icons.arrow_downward),
                          backgroundColor: Colors.green),
                      title: Text("asfheaufehfuewrewyfrhefef"),
                      subtitle: Text("2300.03 DOTS"),
                      trailing:
                          FlatButton(child: Text("Pay"), onPressed: () => {})),
                  ListTile(
                      leading: CircleAvatar(
                          child: Icon(Icons.arrow_upward),
                          backgroundColor: Colors.red),
                      title: Text("asfheaufehfuewrewyfrhefef"),
                      subtitle: Text("300.03 DOTS"),
                      trailing:
                          FlatButton(child: Text("Pay"), onPressed: () => {})),
                ],
              ),
            ),
          ],
        ));
  }
}
