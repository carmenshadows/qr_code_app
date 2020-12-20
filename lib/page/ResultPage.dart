import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    var qrCodeText = data["qr_code_text"];
    var qrImage = QrImage(
      data: qrCodeText,
      version: QrVersions.auto,
      size: 200.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code"),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Center(
        child: qrImage,
      ),
      persistentFooterButtons: [
        FloatingActionButton(
            heroTag: "file_download",
            onPressed: () {},
            backgroundColor: Colors.grey[850],
            child: Icon(
              Icons.file_download,
            )),
        FloatingActionButton(
            heroTag: "share",
            onPressed: () {},
            backgroundColor: Colors.grey[850],
            child: Icon(
              Icons.share,
            )),
      ],
    );
  }
}
