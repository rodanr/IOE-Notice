import 'package:flutter/material.dart';

class NoticeCard extends StatelessWidget {
  final String noticeText, dateText, noticeLink;
  final Function onPress;

  NoticeCard(
      {@required this.noticeText,
      @required this.noticeLink,
      @required this.dateText,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.event_note,
              color: Colors.blue,
            ),
            title: Text(
              noticeText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(dateText),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  color: Colors.grey.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Text(
                    'View',
                    style: TextStyle(fontSize: 15.0,color: Colors.greenAccent,),
                  ),
                  onPressed: onPress,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
