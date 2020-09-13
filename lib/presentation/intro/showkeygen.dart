import 'package:dotswallet/presentation/home/HomeScreen.dart';
import 'package:dotswallet/services/walletgenerate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowKeygenScreen extends StatefulWidget {
  @override
  _ShowKeygenScreenState createState() => _ShowKeygenScreenState();
}

class _ShowKeygenScreenState extends State<ShowKeygenScreen> {
  @override
  void initState() {
    //print(obj.sk);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text("DOTSWALLET",
              style: TextStyle(color: Colors.blue, letterSpacing: 1.5)),
          backgroundColor: Colors.white),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Store these Securely ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/banking.png", height: 200),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Address",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2)),
                      IconButton(
                        icon: Icon(Icons.content_copy),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: "hello"));
                        },
                      )
                    ]),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "sdsdsssdsdsgergedfgfdg",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Signing Key",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2)),
                      IconButton(
                        icon: Icon(Icons.content_copy),
                        onPressed: () {},
                      )
                    ]),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          "sdsdsssdsdsgergedfgfdgoskdsdk;lskd;skd;lksopdikposkdopskdposkdopksdpoksopdkosd",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )),
                    ]),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Verifying Key",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2)),
                      IconButton(
                        icon: Icon(Icons.content_copy),
                        onPressed: () {},
                      )
                    ]),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("sdsdsssdsdsgergedfgfdg",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )),
                    ]),
              ),
              SizedBox(height: 15),
            ]),
      )),
    );
  }
}
