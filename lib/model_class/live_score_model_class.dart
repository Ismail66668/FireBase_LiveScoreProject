class LiveScoreModelClass {
  final String title;
  final String team1;
  final String team2;
  final bool isRunning;
  final int team1score;
  final int team2score;
  final String winnerTeam;

  LiveScoreModelClass(
      {required this.title,
      required this.team1,
      required this.team2,
      required this.isRunning,
      required this.team1score,
      required this.team2score,
      required this.winnerTeam});

  factory LiveScoreModelClass.fromJson(
      String docId, Map<String, dynamic> jsonData) {
    return LiveScoreModelClass(
      title: docId,
      team1: jsonData['team1'],
      team2: jsonData['team2'],
      isRunning: jsonData['isRunning'],
      team1score: jsonData['team1score'],
      team2score: jsonData['team2score'],
      winnerTeam: jsonData['winner'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'team1': team1,
      'team2': team2,
      'isRunning': isRunning,
      'team1score': team1score,
      'team2score': team2score,
      'winner': winnerTeam,
    };
  }
}
