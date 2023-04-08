class Project {
  final String teamName; // ชื่อทีม
  final String managerName;// ชื่อผู้จัดการทีม
  final String news; // ข่าวของทีม
  final int winRate; //อัตราชนะ
  final int loseRate; //อัตราแพ้
  final String playerName; // ชื่อผู้เล่น
  final String imageUrl; //ภาพทีม
  final int rating;
  final String versus1;
  final String versus2;
  final String versus3;
  final String versus4;
  final String versus5;

  Project({
    required this.teamName,
    required this.managerName,
    required this.news,
    required this.winRate,
    required this.loseRate,
    required this.playerName,
    required this.imageUrl,
    required this.rating,
    required this.versus1,
    required this.versus2,
    required this.versus3,
    required this.versus4,
    required this.versus5,
});
}
