import "package:flutter/material.dart";

class ResultItem extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const ResultItem(this.summaryData, {super.key});

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((data){
        return Row(children: [
          Text(((data['question_index'] as int) + 1).toString()),
          Column(children: [
            Text((data['question'] as String)),
            const SizedBox(height: 5,),
            Text((data['chosen_answer'] as String)),
            Text((data['correct_answer'] as String), style: TextStyle(color: Colors.green),)
          ],)
        ],);
      }).toList(),
    );
  }

}
