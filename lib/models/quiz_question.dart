// Question blueprint

class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // create new list based on the old one
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
