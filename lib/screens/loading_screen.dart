import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ioenotice/screens/home_page.dart';
import 'package:ioenotice/screens/notice_page.dart';
import 'package:ioenotice/services/notice.dart';
import 'package:ioenotice/screens/website_down_page.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getNoticeData() async {
    NoticeFetch noticeFetch = NoticeFetch();
    noticeData = await noticeFetch.getNoticeData();
    if(noticeData != null && noticeData != "500"){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    }
    if (noticeData == "500"){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return WebsiteDownPage();
      }));
    }
  }

  @override
  void initState() {
    getNoticeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
