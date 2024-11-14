import "package:flutter/material.dart";
import "package:quizapp_v2/models/results/result_item.dart";

class Results extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const Results(this.summaryData, {super.key});

  @override
  Widget build(context) {
    return
      SizedBox(
        height: 400,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
          children:
          summaryData.map((data){
            return ResultItem(
                data['question_index'] as int,
                data['question'] as String,
                data['chosen_answer'] as String,
                data['correct_answer'] as String,
            );
          }).toList(),
          ),
        ),
      );
  }

}
