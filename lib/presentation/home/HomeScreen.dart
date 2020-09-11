import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                  icon: Icon(Icons.verified_user),
                )
              ],
              leading: IconButton(
                icon: Icon(Icons.scanner),
              ),
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                List(
                  
              
              ),
            )
          ],
        ),
      ),
    );
  }
}
