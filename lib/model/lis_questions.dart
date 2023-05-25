import 'package:new_quiz/model/main_model.dart';
import 'package:new_quiz/model/md_questions.dart';

import '../Lists/abc_list.dart';
import '../Lists/counting_list.dart';
import '../Lists/image_lists.dart';
import '../Lists/quiz_list.dart';

List<MDMain> main_types = [
  MDMain(id: 0, abcd: abcd, image: 'images/abcd.png', title: 'Abc Learning'),
  MDMain(
      id: 1, allQuestions: allQuizes, image: 'images/quiz.png', title: 'Quiz'),
  MDMain(
      id: 2,
      counting: counting,
      image: 'images/abc/abc/a.png',
      title: 'Counting Learning')
];

List<MDQuestions> allQuizes = [
  MDQuestions(
      id: 0,
      questions: fruits,
      title: "Fruits",
      image: 'images/fruits.png',
      result_images: fruits_images),
  MDQuestions(
      id: 1,
      questions: animals,
      title: "Animals",
      image: 'images/animals.png',
      result_images: animals_images),
  MDQuestions(
      id: 2,
      questions: vegetable,
      title: "Vegetables",
      image: 'images/vegetable.png',
      result_images: vegetables_image),
  MDQuestions(
      id: 3,
      questions: body_parts,
      title: "Body parts",
      image: 'images/bodyparts.png',
      result_images: body_parts_image),
];
