import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KIMSIWOOK',
      theme: ThemeData(
        fontFamily: 'Noto_Sans_KR',

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Noto_Sans_KR',
                      ),
                      child: AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText('안녕하세요.\n김시욱의 포트폴리오입니다.'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text('작업 보기'))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                child: Column(
                  children: [
                    Text('기술'),
                    SizedBox(height: 20),
                    Text('Front-End : JavaScript, HTML/CSS, FLUTTER'),
                    Text('Back-End : JAVA, AWS(EC2, RDS, S3, Lambda 등)'),
                    Text('Database : MySql, AWS Aurora'),
                    Text('Data : Google Analytics'),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[100],
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1.3,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'PROJECT',
                      style: TextStyle(fontSize: 40),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 0),
                                // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/loma_logo.png',
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '지역기반 중고거래 플랫폼',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text('서버 및 백엔드 담당'),
                              Text('Java, AWS Lambda/S3/RDS/EC2 등등'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 0),
                                // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/lomabox_logo.png',
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '리뷰 웹사이트',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 0),
                                // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/wooang_logo.png',
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '전통음악/오디오',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text('서버 및 백엔드 담당'),
                                Text('Java, JPA, AWS Lambda/S3/RDS/EC2 등등'),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 0),
                                // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/loma_logo.png',
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TTS 오디오북 플랫폼',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text('프로젝트 총괄'),
                                Text('Java, MongoDB, AWS EC2, Naver CLOVA'),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
