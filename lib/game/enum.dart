const assetPath = 'assets/images';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
}

enum Result {
  playerWin('승리하셨습니다!'),
  draw('무승부입니다'),
  cpuWin('다음 기회를 노려보세요~');

  const Result(this.displayString);

  final String displayString;
}