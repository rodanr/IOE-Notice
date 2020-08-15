import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WebsiteDownPage extends StatefulWidget {

  @override
  _WebsiteDownPageState createState() => _WebsiteDownPageState();
}

class _WebsiteDownPageState extends State<WebsiteDownPage> {
  @override
  void deactivate() {
    SystemNavigator.pop();
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Icon(
                Icons.settings,
                size: 200.0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Text(
                "IOE WEBSITE IS DOWN OR UNDER MAINTENANCE",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
