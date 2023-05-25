class Questions {
  String? questionImage, ans, op1, op2, op3, op4, selected;

  Questions({
    this.questionImage,
    this.ans,
    this.op1,
    this.op2,
    this.op3,
    this.op4,
    this.selected,
  });

  Map<String, dynamic> toMap() {
    return {
      'questionImage': this.questionImage,
      'ans': this.ans,
      'op1': this.op1,
      'op2': this.op2,
      'op3': this.op3,
      'op4': this.op4,
      'selected': this.selected,
    };
  }

  factory Questions.fromMap(Map<String, dynamic> map) {
    return Questions(
      questionImage: map['questionImage'] as String,
      ans: map['ans'] as String,
      op1: map['op1'] as String,
      op2: map['op2'] as String,
      op3: map['op3'] as String,
      op4: map['op4'] as String,
      selected: map['selected'] as String,
    );
  }

  @override
  String toString() {
    return 'Questions{questionImage: $questionImage, ans: $ans, op1: $op1, op2: $op2, op3: $op3, op4: $op4, selected: $selected}';
  }
}
