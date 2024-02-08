import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/welcome_goodbye_model.freezed.dart';
part 'generated/welcome_goodbye_model.g.dart';

@freezed
class WelcomeGoodbyeModel with _$WelcomeGoodbyeModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory WelcomeGoodbyeModel(
    int id,
    String title,
    String exampleOne,
    String exampleOneTranslation,
    String exampleTwo,
    String exampleTwoTranslation,
    String exampleThree,
    String exampleThreeTranslation,
    String exampleFour,
    String exampleFourTranslation,
    String exampleFive,
    String exampleFiveTranslation,
    String exampleSix,
    String exampleSixTranslation,
    String exampleSeven,
    String exampleSevenTranslation,
    String exampleEight,
    String exampleEightTranslation,
  ) = _WelcomeGoodbyeModel;

  factory WelcomeGoodbyeModel.fromJson(Map<String, dynamic> json) =>
      _$WelcomeGoodbyeModelFromJson(json);
}
