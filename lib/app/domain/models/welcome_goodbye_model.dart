import 'package:json_annotation/json_annotation.dart';

part 'welcome_goodbye_model.g.dart';

@JsonSerializable()
class WelcomeGoodbyeModel {
  const WelcomeGoodbyeModel({
    required this.id,
    required this.title,
    required this.exampleOne,
    required this.exampleOneTranslation,
    required this.exampleTwo,
    required this.exampleTwoTranslation,
    required this.exampleThree,
    required this.exampleThreeTranslation,
    required this.exampleFour,
    required this.exampleFourTranslation,
    required this.exampleFive,
    required this.exampleFiveTranslation,
    required this.exampleSix,
    required this.exampleSixTranslation,
    required this.exampleSeven,
    required this.exampleSevenTranslation,
    required this.exampleEight,
    required this.exampleEightTranslation,
  });

  final int id;
  final String title;

  @JsonKey(name: 'example_one')
  final String exampleOne;

  @JsonKey(name: 'example_one_translation')
  final String exampleOneTranslation;

  @JsonKey(name: 'example_two')
  final String exampleTwo;

  @JsonKey(name: 'example_two_translation')
  final String exampleTwoTranslation;

  @JsonKey(name: 'example_three')
  final String exampleThree;

  @JsonKey(name: 'example_three_translation')
  final String exampleThreeTranslation;

  @JsonKey(name: 'example_four')
  final String exampleFour;

  @JsonKey(name: 'example_four_translation')
  final String exampleFourTranslation;

  @JsonKey(name: 'example_five')
  final String exampleFive;

  @JsonKey(name: 'example_five_translation')
  final String exampleFiveTranslation;

  @JsonKey(name: 'example_six')
  final String exampleSix;

  @JsonKey(name: 'example_six_translation')
  final String exampleSixTranslation;

  @JsonKey(name: 'example_seven')
  final String exampleSeven;

  @JsonKey(name: 'example_seven_translation')
  final String exampleSevenTranslation;

  @JsonKey(name: 'example_eight')
  final String exampleEight;

  @JsonKey(name: 'example_eight_translation')
  final String exampleEightTranslation;

  factory WelcomeGoodbyeModel.fromJson(Map<String, dynamic> json) =>
      _$WelcomeGoodbyeModelFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeGoodbyeModelToJson(this);
}

//  WelcomeGoodbyeModel.fromJson(Map<String, dynamic> json)
//       : id = json['id'],
//         title = json['title'],
//         exampleOne = json['example_one'],
//         exampleOneTranslation = json['example_one_translation'],
//         exampleTwo = json['example_two'],
//         exampleTwoTranslation = json['example_two_translation'],
//         exampleThree = json['example_three'],
//         exampleThreeTranslation = json['example_three_translation'],
//         exampleFour = json['example_four'],
//         exampleFourTranslation = json['example_four_translation'],
//         exampleFive = json['example_five'],
//         exampleFiveTranslation = json['example_five_translation'],
//         exampleSix = json['example_six'],
//         exampleSixTranslation = json['example_six_translation'],
//         exampleSeven = json['example_seven'],
//         exampleSevenTranslation = json['example_seven_translation'],
//         exampleEight = json['example_eight'],
//         exampleEightTranslation = json['example_eight_translation'];