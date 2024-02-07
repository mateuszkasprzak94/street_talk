import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_model.freezed.dart';
part 'events_model.g.dart';

@freezed
class EventsModel with _$EventsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory EventsModel(
    String category,
    String location,
    String date,
    String keyFeatures,
    String description,
  ) = _EventsModel;

  factory EventsModel.fromJson(Map<String, dynamic> json) =>
      _$EventsModelFromJson(json);
}
