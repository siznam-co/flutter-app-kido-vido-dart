import '../Learning/Learn_Abc/model/abc_model.dart';
import '../Learning/Learn_counting/model/123_model.dart';
import 'md_questions.dart';

class MDMain{
  int? id;
  String? title,image;
  List <Abc>? abcd ;
  List<MDQuestions>? allQuestions;
  List<Counting>? counting;
  MDMain({
    this.id,
    this.title,
    this.image,
    this.abcd,
    this.allQuestions,
    this.counting,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'image': this.image,
      'abcd': this.abcd,
      'allQuestions': this.allQuestions,
      'counting':this.counting,
    };
  }

  factory MDMain.fromMap(Map<String, dynamic> map) {
    return MDMain(
      id: map['id'] as int,
      title: map['title'] as String,
      image: map['image'] as String,
      abcd: map['abcd'] as List<Abc>,
      allQuestions: map['allQuestions'] as List<MDQuestions>,
      counting: map['counting'] as List<Counting>,
    );
  }

  @override
  String toString() {
    return 'MDQuestions{id: $id, title: $title, image: $image, allQuestions: $allQuestions,abcd: $abcd,counting: $counting}';
  }
}

