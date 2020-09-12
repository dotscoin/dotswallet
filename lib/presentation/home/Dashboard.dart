import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:dio/dio.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<double> graph_data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    try {
      Response response = await Dio().get(
          "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1d");
      response.data.forEach((dat) => {
            setState(() => {graph_data.add(double.parse(dat[1]))})
          });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        // Container(
        //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
        //   child: Image.network(
        //       "http://chart.apis.google.com/chart?cht=qr&chs=150x150&chl=fefgg&chld=H|0"),
        // ),
        SizedBox(height: 50),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("BALANCE",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Text("Rs. 8000", style: TextStyle(fontSize: 48))
            ]),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                color: Colors.blue,
                onPressed: () => {},
                child: Row(children: [
                  Icon(Icons.arrow_upward, color: Colors.white),
                  Text("Send Money", style: TextStyle(color: Colors.white)),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                color: Colors.blue,
                onPressed: () => {},
                child: Row(children: [
                  Icon(Icons.arrow_downward, color: Colors.white),
                  Text("Receive Money", style: TextStyle(color: Colors.white)),
                ]),
              ),
            )
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100.0,
            child: graph_data.length == 0
                ? CircularProgressIndicator()
                : Sparkline(
                    data: graph_data,
                    fillMode: FillMode.below,
                    fillGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.red[800],
                        Colors.red[200],
                        Colors.red[100],
                        Colors.white
                      ],
                    ),
                  ),
          ),
        ),
      ],
    ));
  }
}
