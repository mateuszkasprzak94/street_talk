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
  final String exampleOne;
  final String exampleOneTranslation;
  final String exampleTwo;
  final String exampleTwoTranslation;
  final String exampleThree;
  final String exampleThreeTranslation;
  final String exampleFour;
  final String exampleFourTranslation;
  final String exampleFive;
  final String exampleFiveTranslation;
  final String exampleSix;
  final String exampleSixTranslation;
  final String exampleSeven;
  final String exampleSevenTranslation;
  final String exampleEight;
  final String exampleEightTranslation;

  WelcomeGoodbyeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        exampleOne = json['example_one'],
        exampleOneTranslation = json['example_one_translation'],
        exampleTwo = json['example_two'],
        exampleTwoTranslation = json['example_two_translation'],
        exampleThree = json['example_three'],
        exampleThreeTranslation = json['example_three_translation'],
        exampleFour = json['example_four'],
        exampleFourTranslation = json['example_four_translation'],
        exampleFive = json['example_five'],
        exampleFiveTranslation = json['example_five_translation'],
        exampleSix = json['example_six'],
        exampleSixTranslation = json['example_six_translation'],
        exampleSeven = json['example_seven'],
        exampleSevenTranslation = json['example_seven_translation'],
        exampleEight = json['example_eight'],
        exampleEightTranslation = json['example_eight_translation'];
}
