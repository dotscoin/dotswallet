import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Settings", style: TextStyle(color: Colors.black))),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Account",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("Address"),
                  subtitle: Text("dsflksjdfljsdflsdfj"))),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("Export "),
                  subtitle: Text("Export Your Keys to a Secured Place"),
                  trailing: FlatButton(
                      onPressed: null, child: Icon(Icons.arrow_forward_ios)))),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Join Community",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("Twitter "),
                  subtitle: Text("follow us on the Twitter"),
                  trailing: FlatButton(
                      onPressed: null, child: Icon(Icons.arrow_forward_ios)))),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("News"),
                  subtitle: Text("Subscribe to the latest updates"),
                  trailing: FlatButton(
                      onPressed: null, child: Icon(Icons.arrow_forward_ios)))),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("Facebook"),
                  subtitle: Text("follow us on the Facebook"),
                  trailing: FlatButton(
                      onPressed: null, child: Icon(Icons.arrow_forward_ios)))),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "About",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("About"),
                  subtitle: Text("know more"),
                  trailing: FlatButton(
                      onPressed: null, child: Icon(Icons.arrow_forward_ios)))),
          Container(
              margin: const EdgeInsets.all(10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 20)
                  ]),
              child: ListTile(
                  title: Text("Terms And Condition"),
                  subtitle: Text("know More"),
                  trailing: FlatButton(
                      onPressed: null, child: Icon(Icons.arrow_forward_ios)))),
        ],
      ),
    );
  }
}
