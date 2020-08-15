import 'package:flutter/material.dart';
import 'package:ioenotice/utilities/constants.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

bool switchState = false;

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 5.0, 10.0),
                child: Text(
                  'About',
                  textAlign: TextAlign.left,
                  style: aboutTextStyle,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    height: 126,
                    width: 152.0,
                    child: Image(
                      image: AssetImage('assets/ioenotice.png'),
                    ),
                  ),
                  Container(
                    child: Text(
                      'VERSION 1.0',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text(
                  descriptionText,
                  textAlign: TextAlign.start,
                  style: aboutDescription,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'App Creator:',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Rodan Ramdam',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SocialMediaButton.facebook(
                        url: 'https://www.facebook.com/rodan.ramdam.5/',
                        size: 30.0,
                      ),
                      SocialMediaButton.github(
                        url: 'https://github.com/rodan0818/',
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SocialMediaButton.instagram(
                        url: 'https://www.instagram.com/rown_me/',
                        size: 30.0,
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      'App Icon Credit:',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 68.0),
                        child: Text(
                          'Biswas Dangol  ',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SocialMediaButton.facebook(
                        url: 'https://www.facebook.com/bishwas.dangol.10/',
                        size: 30.0,
                      ),
                      SocialMediaButton.github(
                        url: 'https://github.com/bishwas76/',
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SocialMediaButton.instagram(
                        url: 'https://www.instagram.com/bayernbishwas/',
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
