import 'package:flutter/material.dart';
import 'package:ioenotice/components/notice_card.dart';
import 'package:ioenotice/services/notice.dart';
import 'package:ioenotice/utilities/separator.dart';
import 'package:ioenotice/screens/notice_view_page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

var noticeData;
bool showSpinner =false;
class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  List<String> titleList=[];
  List<String> linkList=[];
  List<String> dateList=[];

  void updateUI() {
    titleList.clear();
    linkList.clear();
    dateList.clear();
      for (int i = 1; i <= 6; i = i + 1) {
        SeparateTitleLinkAndDate obj = SeparateTitleLinkAndDate();
        var mixedValueOfTitleDateAndLink = noticeData[i.toString()];
        obj.separate(mixedValueOfTitleDateAndLink.toString());
        setState(() {
          titleList.add(obj.getTitle());
          linkList.add(obj.getLink());
          dateList.add(obj.getDate());
        });
      }//end of for loop
  }//updateUI

  @override
  void initState() {
    updateUI();
    super.initState();
  }
  @override

  @override
  Widget build(BuildContext context) {
    // sharing context with generateNoticeBody method
    context = context;
    return SafeArea(
      child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          onPressed: () async{
                            if (pageNumber > 1){
                              setState(() {
                                showSpinner = true;
                              });
                              pageNumber = pageNumber - 1;
                              NoticeFetch noticeFetch = NoticeFetch();
                              noticeData = await noticeFetch.getNoticeData();
                              setState(() {
                                updateUI();
                                showSpinner =false;
                              });
                            }
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: 35.0,
                                color: Colors.red,
                              ),
                              Text('prev',style: TextStyle(fontSize: 10.0,color: Colors.red,),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Page : " + pageNumber.toString(),
                            style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.blue.shade700,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          onPressed: () async{
                            setState(() {
                              showSpinner = true;
                            });
                            pageNumber = pageNumber +1 ;
                            NoticeFetch noticeFetch = NoticeFetch();
                            noticeData = await noticeFetch.getNoticeData();
                            setState(() {
                              updateUI();
                              showSpinner = false;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 35.0,
                                color: Colors.green,
                              ),
                              Text('next',style: TextStyle(fontSize: 10.0,color: Colors.green,),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 20,
                child: Scrollbar(
                  child: ListView(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 50.0),
                      children: [
                        NoticeCard(
                          noticeText: titleList[0],
                          noticeLink: linkList[0],
                          dateText: dateList[0],
                          onPress: (){
                            networkPdfLink = linkList[0];
                            noticeName = titleList[0];
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return NoticeView();
                            }));
                          },
                        ),
                        NoticeCard(
                          noticeText: titleList[1],
                          noticeLink: linkList[1],
                          dateText: dateList[1],
                          onPress: (){
                            networkPdfLink = linkList[1];
                            noticeName = titleList[1];
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return NoticeView();
                            }));
                          },
                        ),
                        NoticeCard(
                          noticeText: titleList[2],
                          noticeLink: linkList[2],
                          dateText: dateList[2],
                          onPress: (){
                            networkPdfLink = linkList[2];
                            noticeName = titleList[2];
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return NoticeView();
                            }));
                          },
                        ),
                        NoticeCard(
                          noticeText: titleList[3],
                          noticeLink: linkList[3],
                          dateText: dateList[3],
                          onPress: (){
                            networkPdfLink = linkList[3];
                            noticeName = titleList[3];
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return NoticeView();
                            }));
                          },
                        ),
                        NoticeCard(
                          noticeText: titleList[4],
                          noticeLink: linkList[4],
                          dateText: dateList[4],
                          onPress: (){
                            networkPdfLink = linkList[4];
                            noticeName = titleList[4];
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return NoticeView();
                            }));
                          },
                        ),
                        NoticeCard(
                          noticeText: titleList[5],
                          noticeLink: linkList[5],
                          dateText: dateList[5],
                          onPress: (){
                            networkPdfLink = linkList[5];
                            noticeName = titleList[5];
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return NoticeView();
                            }));
                          },
                        ),
                      ],
                ),
              ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.refresh),
            backgroundColor: Colors.grey.shade700,
            foregroundColor: Colors.white,
            hoverColor: Colors.green,
            onPressed: () async{
              setState(() {
                showSpinner =true;
              });
              pageNumber = 1;
              NoticeFetch noticeFetch = NoticeFetch();
              noticeData = await noticeFetch.getNoticeData();
              setState(() {
                updateUI();
                showSpinner = false;
              });
            }),
      ),
    );
  }
}
