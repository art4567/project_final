import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_final/scorepages/score_chelsea.dart';
import 'package:project_final/scorepages/score_liverpool.dart';
import 'package:project_final/scorepages/score_mancity.dart';
import 'package:project_final/scorepages/score_manu.dart';
import 'package:project_final/scorepages/score_spur.dart';
import 'package:project_final/style_widgets/scaff.dart';

import '../list_pages.dart';
import '../model/model_project.dart';

class ScoreDetails extends StatefulWidget {
  const ScoreDetails({Key? key}) : super(key: key);

  @override
  State<ScoreDetails> createState() => _ScoreDetailsState();
}

class _ScoreDetailsState extends State<ScoreDetails> {
  var average = ((5 / 7) * 100).toStringAsFixed(2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Score VS Team Big6 Premier Leauge',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: MyScaffold(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.amber.withOpacity(0.5),
                color: const Color(0xFFFFF8EC),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Arsenal', style: amountStyle),
                      //const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: AspectRatio(
                          aspectRatio: 1.75,
                          child: Image.asset(
                            'assets/images/foot2.png',
                            //fit: BoxFit.cover,
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                      Text(
                        'อาเซน่อลvsแมนยู\nเยือน : แพ้ 1-3 \nเหย้า : ชนะ 3-2 \n\nอาเซน่อลvsแมนซิตี้\nเยือน : แข่งวันที่27/4/2566 เวลา:02.00 \nเหย้า : แพ้ 1-3 \n\nอาเซน่อลvsสเปอร์\nเยือน : ชนะ 2-0 \nเหย้า : ชนะ 3-1'
                        '\n\nอาเซน่อลvsลิเวอร์พูล\nเยือน : แข่งวันที่9/4/2566 เวลา:20.00 \nเหย้า : ชนะ 3-2 \n\nอาเซน่อลvsเชลซี\nเยือน : ชนะ 1-0 \nเหย้า : แข่งวันที่29/4/2566 เวลา:23.30'
                        '\n\nอัตราชนะที่เจอทีมBig6ด้วยกันเอง \nชนะ5นัดจากการลงเล่น7ครั้ง คิดเป็นอัตราการชนะ $average%',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => ScoreCity(),
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
                                        Icons.scoreboard_outlined,
                                        size: 18.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('แมนซิตี้',
                                          style: TextStyle(fontSize: 16.0))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 8.0),
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => ScoreManu(),
                                  )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFEE4D4E),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.scoreboard_outlined,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text('แมนยู',
                                            style: TextStyle(fontSize: 16.0))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => ScoreChelsea(),
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
                                        Icons.scoreboard_outlined,
                                        size: 18.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('เชลซี',
                                          style: TextStyle(fontSize: 16.0))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 1.0),
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => ScoreSpur(),
                                  )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFEE4D4E),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.scoreboard_outlined,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text('สเปอร์',
                                            style: TextStyle(fontSize: 16.0))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 1.0),
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => ScoreLiverpool(),
                                  )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFEE4D4E),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.scoreboard_outlined,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text('ลิเวอร์พูล',
                                            style: TextStyle(fontSize: 16.0))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 0.0),
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .push(MaterialPageRoute(
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
