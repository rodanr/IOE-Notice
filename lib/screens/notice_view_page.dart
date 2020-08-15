// This page provides single notice preview using the pdf renderer
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

String networkPdfLink;
String noticeName;

class NoticeView extends StatefulWidget {
  @override
  _NoticeViewState createState() => _NoticeViewState();
}

class _NoticeViewState extends State<NoticeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noticeName),
      ),
      body: PDF(
        enableSwipe: true,
        swipeHorizontal: true,
      ).cachedFromUrl(networkPdfLink),
    );
  }
}
