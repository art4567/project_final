import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_final/style_widgets/scaff.dart';

import 'football_detail_pages.dart';
import 'model/model_project.dart';

var descriptionStyle = const TextStyle(
  fontSize: 12.0,
  color: Colors.black54,
);
var amountStyle = const TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.black54,
);

class FootballListPage extends StatefulWidget {
  const FootballListPage({Key? key}) : super(key: key);

  @override
  State<FootballListPage> createState() => _FootballListPageState();
}

class _FootballListPageState extends State<FootballListPage> {
  List<Project> projects = [
    Project(
      teamName: 'Arsenal',
      managerName: 'Mikel Arteta',
      news:
          'การแข่งในพรีเมียร์ลีคเหลืออีก9นัด คะแนนยังทิ้งห่างกับแมนซิตี้8คะแนน เขาจะคว้าแชมป์พรีเมียร์ลีคมาอยู่ในมือได้หรือไม่!!',
      winRate: 82,
      loseRate: 18,
      playerName:
          '\nผู้รักษาประตู : Aaron Ramsdale \nกองหลัง : Kieran Tierney , Ben White , Gabriel , Oleksandr Zinchenko \nกองกลาง : Thomas Partey , Granit Xhaka , Martin Ødegaard(C) \nกองหน้า : Bukayo Saka , Gabriel Martinelli , Gabriel Jesus',
      imageUrl: 'assets/images/foot2.png',
      rating: 1,
      versus1: 'เจอแมนยู\nเยือน : แพ้ 1-3\nเหย้า : ชนะ 3-2',
      versus2:
          'เจอแมนซิตี้\nเยือน : แข่งวันที่27/4/2566 เวลา:02.00\nเหย้า : แพ้ 1-3',
      versus3: 'เจอสเปอร์\nเยือน : ชนะ 2-0\nเหย้า : ชนะ 3-1',
      versus4:
          'เจอลิเวอร์พูล\nเยือน : แข่งวันที่9/4/2566 เวลา:20.00\nเหย้า : ชนะ 3-2',
      versus5:
          'เจอเชลซี\nเยือน : ชนะ 1-0\nเหย้า : แข่งวันที่29/4/2566 เวลา:23.30',
    ),
    Project(
      teamName: 'Manchester City',
      managerName: 'Pep Guardiola',
      news:
          'การแข่งในพรีเมียร์ลีคเหลืออีก10นัด คะแนนยังทิ้งห่างกับอาเซน่อลอีก8คะแนน เขาจะสามารถแซงอาเซน่อลแล้วคว้าแชมป์พรีเมียร์ลีคมาอยู่ในมือได้หรือไม่!!',
      winRate: 70,
      loseRate: 30,
      playerName:
          '\nผู้รักษาประตู : Ederson \nกองหลัง : Ruben Dias , Kyle Walker , Nathan Ake , Manuel Akanji \nกองกลาง : Ilkay Gundogan(C) , Kevin De Bruyne , Bernardo Silva \nกองหน้า : Jack Grealish , Erling Haaland , Phil Foden',
      imageUrl: 'assets/images/foot6.png',
      rating: 2,
      versus1: 'เจอแมนยู\nเยือน : แพ้ 1-2\nเหย้า : ชนะ 6-3',
      versus2:
          'เจออาเซน่อล\nเยือน : แข่งวันที่27/4/2566 เวลา:02.00\nเหย้า : ชนะ 3-1',
      versus3: 'เจอสเปอร์\nเยือน : แพ้ 0-1\nเหย้า : ชนะ 4-2',
      versus4: 'เจอลิเวอร์พูล\nเยือน : แพ้0-1 \nเหย้า : ชนะ 4-1',
      versus5:
          'เจอเชลซี\nเยือน : ชนะ 1-0\nเหย้า : แข่งวันที่20/5/2566 เวลา:21.00',
    ),
    Project(
      teamName: 'Manchester United',
      managerName: 'Erik ten hag',
      news:
          'การแข่งที่จะเจอเอเวอร์ตันที่จะถึงนี้ มีข่าวดีสำหรับเด็กผีคืออิริคเซ่นสามารถกลับมาลงแข่งได้แล้ว แต่ชอว์ที่มีอาการบาดเจ็บตอนนัดเจอกับเบรนฟอร์ดจะยังไม่พร้อมสำหรับเกมนี้',
      winRate: 63,
      loseRate: 37,
      playerName:
          '\nผู้รักษาประตู : David De Gea \nกองหลัง : Lisandro Martínez , Raphael Varane , Aaron Wan-Bissaka , Shaw \nกองกลาง : Bruno Fernandes(C) , Christian Eriksen , Casemiro \nกองหน้า : Marcus Rashford , Antony , Wout Weghorst',
      imageUrl: 'assets/images/foot1.png',
      rating: 4,
      versus1: 'เจออาเซน่อล\nเยือน : แพ้ 2-3\nเหย้า : ชนะ3-1',
      versus2: 'เจอแมนซิตี้\nเยือน : แพ้ 3-6\nเหย้า : ชนะ 2-1',
      versus3:
          'เจอสเปอร์\nเยือน : แข่งวันที่28/4/2566 เวลา:02.15\nเหย้า : ชนะ2-0',
      versus4: 'เจอลิเวอร์พูล\nเยือน : แพ้ 0-7 \nเหย้า : ชนะ 2-1',
      versus5: 'เจอเชลซี\nเยือน : เสมอ 1-1\nเหย้า : เลื่อนแข่งยังไม่มีกำหนด',
    ),
    Project(
      teamName: 'Tottenham Hotspur',
      managerName: 'Cristian Stellini',
      news:
          'หลังจากที่สเปอร์ได้เสมอกับเอเวอร์ตันไป3ประตูต่อ3ประตู คอนเต้ก็ได้ให้สัมภาษณ์แบบทิ้งบอมใส่ทั้งนักเตะและบอร์ดบริหาร ทำให้ช่วงพักเบรคทีมชาติ ทางบอร์ดบริหารได้ทำการปลดผู้จัดการทีมอย่างคอนเต้ออกจากทีมไปในที่สุด',
      winRate: 59,
      loseRate: 41,
      playerName:
          '\nผู้รักษาประตู : Hugo Lloris \nกองหลัง : Cristian Romero  , Eric Dier , Emerson Royal  , Clément Lenglet	\nกองกลาง : Pierre-Emile Højbjerg  , Rodrigo Bentancur , Ivan Perišić \n กองหน้า : Son Heung-min , Harry Kane(C) , Dejan Kulusevski',
      imageUrl: 'assets/images/foot5.png',
      rating: 5,
      versus1:
          'เจอแมนยู\nเยือน : แพ้ 0-2\nเหย้า : แข่งวันที่28/4/2566 เวลา:02.15',
      versus2: 'เจอแมนซิตี้\nเยือน : แพ้ 2-4\nเหย้า : ชนะ 1-0',
      versus3: 'เจออาเซน่อล\nเยือน : แพ้ 1-3\nเหย้า : แพ้ 0-2',
      versus4:
          'เจอลิเวอร์พูล\nเยือน : แข่งวันที่30/4/2566 เวลา:22.30\nเหย้า : แพ้ 1-2',
      versus5: 'เจอเชลซี\nเยือน :เสมอ 2-2\nเหย้า : ชนะ 2-0',
    ),
    Project(
      teamName: 'Liverpool',
      managerName: 'Jurgen Klopp',
      news:
          'หลังจากที่ลิเวอร์พูลชนะแมนยูมา7-0 ทีมก็ยังไม่สามารถชนะทีมอะไรได้อีกเลยหลังจากนั้น',
      winRate: 50,
      loseRate: 50,
      playerName:
          '\nผู้รักษาประตู : Alisson Becker \nกองหลัง : Virgil Van Dijk(C) , Ibrahim Konate , Trent Alexander-Arnold , Andrew Robertson \nกองกลาง : Jordan Henderson (C) , Fabinho , Stefan Bajčetić \nกองหน้า : Mohamed Salah , Darwin Núñez , Diogo Jota',
      imageUrl: 'assets/images/foot4.png',
      rating: 8,
      versus1: 'เจอแมนยู\nเยือน : แพ้ 1-2\nเหย้า : ชนะ 7-0',
      versus2: 'เจอแมนซิตี้\nเยือน : แพ้ 1-4 เวลา:02.00\nเหย้า : ชนะ 1-0',
      versus3:
          'เจออาเซน่อล\nเยือน : แพ้ 2-3\nเหย้า : แข่งวันที่9/4/2566 เวลา:20.00',
      versus4:
          'เจอสเปอร์\nเยือน : ชนะ 2-1\nเหย้า : แข่งวันที่30/4/2566 เวลา:22.30',
      versus5: 'เจอเชลซี\nเยือน : เสมอ 0-0\nเหย้า : เสมอ 0-0',
    ),
    Project(
      teamName: 'Chelsea',
      managerName: 'Frank Lampard',
      news:
          'หลังจากที่ได้ปลดประจำการ Graham Potter ไป ทีมเชลซีก็ได้แต่งตั้งกุนซือใหม่ขึ้นมาเป็นกุนซือชั่วคราวจนจบฤดูกาล เขาคนนั้นคือ "Frank Lampard"',
      winRate: 45,
      loseRate: 55,
      playerName:
          '\nผู้รักษาประตู : Kepa Arrizabalaga \nกองหลัง : Reece James , Ben Chilwell , Wesley Fofana , Kalidou Koulibaly	, Marc Cucurella  \nกองกลาง : Enzo Fernández , Mateo Kovačić(C) \nกองหน้า : João Félix , Kai Havertz  , Mykhailo Mudryk',
      imageUrl: 'assets/images/foot3.png',
      rating: 11,
      versus1: 'เจอแมนยู\nเยือน : เลื่อนแข่งไม่มีกำหนด\nเหย้า : เสมอ 1-1',
      versus2:
          'เจอแมนซิตี้\n\nเยือน : ชนะ 1-0\nเหย้า : แข่งวันที่20/5/2566 เวลา:21.00',
      versus3: 'เจอสเปอร์\nเยือน : แพ้ 0-2\nเหย้า : เสมอ 2-2',
      versus4: 'เจอลิเวอร์พูล\nเยือน : เสมอ 0-0\nเหย้า : เสมอ 0-0',
      versus5:
          'เจออาเซน่อล\nเยือน : แข่งวันที่29/4/2566 เวลา:23.30 \nเหย้า : แพ้ 0-1',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.person),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                child: const Text('BIG6 IN PREMIER LEAUGE'),
              ),
              const Icon(Icons.sports_football_outlined),
            ],
          ),
          automaticallyImplyLeading: false
      ),
      body: MyScaffold(
        child: ListView.builder(
          itemCount: projects.length,
          // Callback function
          itemBuilder: (BuildContext context, int index) {
            var project = projects[index];

            return Card(
              child: InkWell(
                onTap: () {
                  _handleClickProjectItem(projects[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            project.imageUrl,
                            width: 64.0,
                            height: 64.0,
                            //fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  project.teamName,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  project.news,
                                  style: descriptionStyle,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BallDetailPages(project: p)),
    );
  }
}
