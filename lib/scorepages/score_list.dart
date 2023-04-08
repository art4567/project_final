import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_final/scorepages/score_chelsea.dart';
import 'package:project_final/scorepages/score_detail.dart';
import 'package:project_final/scorepages/score_liverpool.dart';
import 'package:project_final/scorepages/score_mancity.dart';
import 'package:project_final/scorepages/score_manu.dart';
import 'package:project_final/scorepages/score_spur.dart';

import '../list_pages.dart';
import '../style_widgets/scaff.dart';

class ScoreList extends StatefulWidget {
  const ScoreList({Key? key}) : super(key: key);

  @override
  State<ScoreList> createState() => _ScoreListState();
}

class _ScoreListState extends State<ScoreList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Score Big6 Premier Leauge VS',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: MyScaffold(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.amber.withOpacity(0.5),
                color: const Color(0xFFEEEEEE),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('เลือกทีมที่จะดูคะแนน',style: amountStyle,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScoreManu(),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE4D4E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/images/foot1.png',
                                  width: 35.0,
                                  height: 35.0,
                                  //fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8.0),
                                Text('แมนยู VS Big5',
                                    style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScoreDetails(),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE4D4E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/images/foot2.png',
                                  width: 35.0,
                                  height: 35.0,
                                  //fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8.0),
                                Text('อาเซน่อล VS Big5',
                                    style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScoreChelsea(),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE4D4E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/images/foot3.png',
                                  width: 35.0,
                                  height: 35.0,
                                  //fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8.0),
                                Text('เชลซี VS Big5',
                                    style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScoreLiverpool(),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE4D4E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/images/foot4.png',
                                  width: 35.0,
                                  height: 35.0,
                                  //fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8.0),
                                Text('ลิเวอร์พูล VS Big5',
                                    style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScoreSpur(),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE4D4E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/images/foot5.png',
                                  width: 35.0,
                                  height: 35.0,
                                  //fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8.0),
                                Text('สเปอร์ VS Big5',
                                    style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(

                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ScoreCity(),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE4D4E),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Image.asset(
                                  'assets/images/foot6.png',
                                  width: 35.0,
                                  height: 35.0,
                                  //fit: BoxFit.cover,
                                ),
                                SizedBox(width: 8.0),
                                Text('แมนซิตี้ VS Big5',
                                    style: TextStyle(fontSize: 16.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                      child: ElevatedButton(

                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FootballListPage(),
                        )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFEE4D4E),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.home_outlined,
                                size: 18.0,
                              ),
                              SizedBox(width: 5.0),
                              Text('หน้าหลัก',
                                  style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 0.0,
                ),
                child: Divider(height: 0.0),
              ),
              const Text('แชร์ให้เพื่อน'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.line,
                        color: Colors.blueGrey,
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blueGrey,
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blueGrey,
                        //size: 100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
