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

class PercentagePages extends StatefulWidget {
  const PercentagePages({Key? key}) : super(key: key);

  @override
  State<PercentagePages> createState() => _PercentagePagesState();
}

class _PercentagePagesState extends State<PercentagePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Percentage Champion Premier Leauge',
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'เลือกทีมที่จะดูคะแนน',
                          style: amountStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/foot1.png',
                                width: 35.0,
                                height: 35.0,
                                //fit: BoxFit.cover,
                              ),
                              SizedBox(width: 8.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('โอกาสที่แมนยูจะเป็นแชมป์',
                                    style: TextStyle(fontSize: 16.0)),
                              ),
                              Expanded(
                                flex: 20,
                                child: Container(
                                  height: 10.0,
                                  width: 100.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 100 - 20,
                                child: Container(
                                  height: 10.0,
                                  width: 200.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.grey, //Color(0xFF)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '20%',
                              style: descriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/foot2.png',
                                width: 35.0,
                                height: 35.0,
                                //fit: BoxFit.cover,
                              ),
                              SizedBox(width: 8.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('โอกาสที่อาเซน่อลจะเป็นแชมป์',
                                    style: TextStyle(fontSize: 16.0)),
                              ),
                              Expanded(
                                flex: 50,
                                child: Container(
                                  height: 10.0,
                                  width: 100.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 100 - 50,
                                child: Container(
                                  height: 10.0,
                                  width: 200.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.grey, //Color(0xFF)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '50%',
                              style: descriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/foot3.png',
                                width: 35.0,
                                height: 35.0,
                                //fit: BoxFit.cover,
                              ),
                              SizedBox(width: 8.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('โอกาสที่เชลซีจะเป็นแชมป์',
                                    style: TextStyle(fontSize: 16.0)),
                              ),
                              Expanded(
                                flex: 100,
                                child: Container(
                                  height: 10.0,
                                  width: 200.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.grey, //Color(0xFF)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '0%',
                              style: descriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/foot4.png',
                                width: 35.0,
                                height: 35.0,
                                //fit: BoxFit.cover,
                              ),
                              SizedBox(width: 8.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('โอกาสที่ลิเวอร์พูลจะเป็นแชมป์',
                                    style: TextStyle(fontSize: 16.0)),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 10.0,
                                  width: 100.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 100 - 2,
                                child: Container(
                                  height: 10.0,
                                  width: 200.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.grey, //Color(0xFF)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '2%',
                              style: descriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/foot5.png',
                                width: 35.0,
                                height: 35.0,
                                //fit: BoxFit.cover,
                              ),
                              SizedBox(width: 8.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('โอกาศที่แมนยูจะเป็นแชมป์',
                                    style: TextStyle(fontSize: 16.0)),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 10.0,
                                  width: 100.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 100 - 3,
                                child: Container(
                                  height: 10.0,
                                  width: 200.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.grey, //Color(0xFF)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '3%',
                              style: descriptionStyle,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/foot6.png',
                                width: 35.0,
                                height: 35.0,
                                //fit: BoxFit.cover,
                              ),
                              SizedBox(width: 8.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('โอกาสที่แมนซิตี้จะเป็นแชมป์',
                                    style: TextStyle(fontSize: 16.0)),
                              ),
                              Expanded(
                                flex: 25,
                                child: Container(
                                  height: 10.0,
                                  width: 100.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.red,
                                ),
                              ),
                              Expanded(
                                flex: 100 - 25,
                                child: Container(
                                  height: 10.0,
                                  width: 200.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5.0,
                                      horizontal:
                                          0.0), //margin ระยะห่าง มี horizontal / vertical
                                  color: Colors.grey, //Color(0xFF)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //เอาตัวแรกกับตัวท้ายไปไว้หัวกับท้ายบรรทัด
                        crossAxisAlignment: CrossAxisAlignment.end,
                        // ค่า default คือ center
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //ค่า default คือ .center
                          ),
                          // แปลงจากตัวแปรชนิด int ให้เป็น string
                          //Text('${duration.toString()} วัน',style: descriptionStyle,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '25%',
                              style: descriptionStyle,
                            ),
                          ),
                        ],
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
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

/*Row(
                      children: [
                        Expanded(
                          flex: percent!,
                          child: Container(
                            height: 10.0,
                            width: 100.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),//margin ระยะห่าง มี horizontal / vertical
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          flex: 100 - percent!,
                          child: Container(
                            height: 10.0,
                            width: 200.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),//margin ระยะห่าง มี horizontal / vertical
                            color: Colors.grey, //Color(0xFF)
                          ),
                        ),
                      ],
                    ),*/
