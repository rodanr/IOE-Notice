import 'package:ioenotice/services/networking.dart';
int pageNumber = 1;
class NoticeFetch {
  String url = 'https://ioenotice.herokuapp.com/page/$pageNumber';
  Future<dynamic> getNoticeData() async{
    NetworkingHelper networkingHelper = NetworkingHelper(url: url);
    var noticeData = await networkingHelper.getNoticeData();
    if (noticeData == "500"){
      return "500";
    }
    else{
      return noticeData;
    }
  }
}
