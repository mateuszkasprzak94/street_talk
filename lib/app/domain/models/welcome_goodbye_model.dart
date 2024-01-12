import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_goodbye_model.freezed.dart';
part 'welcome_goodbye_model.g.dart';

@freezed
class WelcomeGoodbyeModel with _$WelcomeGoodbyeModel {
  factory WelcomeGoodbyeModel(
    int id,
    String title,
    @JsonKey(name: 'example_one') String exampleOne,
    @JsonKey(name: 'example_one_translation') String exampleOneTranslation,
    @JsonKey(name: 'example_two') String exampleTwo,
    @JsonKey(name: 'example_two_translation') String exampleTwoTranslation,
    @JsonKey(name: 'example_three') String exampleThree,
    @JsonKey(name: 'example_three_translation') String exampleThreeTranslation,
    @JsonKey(name: 'example_four') String exampleFour,
    @JsonKey(name: 'example_four_translation') String exampleFourTranslation,
    @JsonKey(name: 'example_five') String exampleFive,
    @JsonKey(name: 'example_five_translation') String exampleFiveTranslation,
    @JsonKey(name: 'example_six') String exampleSix,
    @JsonKey(name: 'example_six_translation') String exampleSixTranslation,
    @JsonKey(name: 'example_seven') String exampleSeven,
    @JsonKey(name: 'example_seven_translation') String exampleSevenTranslation,
    @JsonKey(name: 'example_eight') String exampleEight,
    @JsonKey(name: 'example_eight_translation') String exampleEightTranslation,
  ) = _WelcomeGoodbyeModel;

  factory WelcomeGoodbyeModel.fromJson(Map<String, dynamic> json) =>
      _$WelcomeGoodbyeModelFromJson(json);
}
