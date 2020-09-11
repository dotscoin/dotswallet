import 'package:dotswallet/presentation/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';

class ScanAndPay extends StatefulWidget {
  ScanAndPay({Key key}) : super(key: key);

  @override
  _ScanAndPayState createState() => _ScanAndPayState();
}

class _ScanAndPayState extends State<ScanAndPay> {
  var cameraScanResult;
  scan() async {
    var temp = await BarcodeScanner.scan();
    setState(() => {cameraScanResult = temp});

    print(
        cameraScanResult.type); // The result type (barcode, cancelled, failed)
    print(cameraScanResult.rawContent); // The barcode content
    print(cameraScanResult.format); // The barcode format (as enum)
    print(cameraScanResult
        .formatNote); // If a unknown format was scanned this field contains a note
  }

  @override
  initState() {
    super.initState();
    scan();
    if (cameraScanResult != null) {
      if (cameraScanResult.type == "Cancelled" ||
          cameraScanResult.type == "Failed")
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Hello")));
  }
}
