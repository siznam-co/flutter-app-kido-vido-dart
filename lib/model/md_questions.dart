import 'package:new_quiz/Quiz/model/question_model.dart';

class MDQuestions{
  int? id;
  String? title,image;
  List<Questions>? questions;
  List result_images;


  MDQuestions({
    this.id,
    this.title,
    this.image,
    required this.result_images,
    this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'image': this.image,
      'result_images': this.result_images,
      'questions': this.questions,
    };
  }

  factory MDQuestions.fromMap(Map<String, dynamic> map) {
    return MDQuestions(
      id: map['id'] as int,
      title: map['title'] as String,
      image: map['image'] as String,
      result_images: map['result_image'] as List,
      questions: map['questions'] as List<Questions>,
    );
  }

  @override
  String toString() {
    return 'MDQuestions{id: $id, title: $title, image: $image, questions: $questions,result_images: $result_images}';
  }
}