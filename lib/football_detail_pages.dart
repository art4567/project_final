import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_final/percentchamp_page.dart';
import 'package:project_final/scorepages/score_detail.dart';
import 'package:project_final/scorepages/score_list.dart';

import 'list_pages.dart';
import 'model/model_project.dart';
import 'style_widgets/scaff.dart';

class BallDetailPages extends StatelessWidget {
  final Project project;
  const BallDetailPages({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          project.teamName,
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
                      Text(
                        project.teamName,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      //const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: AspectRatio(
                          aspectRatio: 1.75,
                          child: Image.asset(
                            project.imageUrl,
                            //fit: BoxFit.cover,
                            width: 120,
                            height: 120,
                          ),
                        ),
                      ),
                      Text(
                        project.news,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'อัตราการชนะของทีมคือ: ${project.winRate}%',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'อัตราการแพ้ของทีมคือ: ${project.loseRate}%',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'ผู้จัดการทีมคนปัจจุบัน: ${project.managerName}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '\nนักเตะ11ตัวจริง ${project.playerName}',
                        style: const TextStyle(
                          fontSize: 14.0,
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
                    const Text('อันดับตารางคะแนนขณะนี้'),
                    Builder(builder: (context) {
                      return Text(
                        'อันดับที่ ${(project.rating)}',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.orange.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }),
                    const SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PercentagePages(),
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
                                Icons.sports_football,
                                size: 18.0,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                  'แต่ละทีมมีโอกาศเป็นแชมป์พรีเมียร์ลีคเท่าไหร่',
                                  style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScoreList(),
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
                                Icons.sports_football,
                                size: 18.0,
                              ),
                              SizedBox(width: 8.0),
                              Text('คะแนนที่เคยเจอกันกับทีมBig6',
                                  style: TextStyle(fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
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
                              Text('หน้าหลัก', style: TextStyle(fontSize: 16.0))
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
