import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Generator"),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter text to generate QR code",
              style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[900])),
                hintText: "e.g. example.com/example",
                hintStyle: TextStyle(color: Colors.grey[400])),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/result", arguments: {
                    "qr_code_text": "${textEditingController.text}"
                  });
                },
                color: Colors.grey[800],
                child: Text(
                  "Generate",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
