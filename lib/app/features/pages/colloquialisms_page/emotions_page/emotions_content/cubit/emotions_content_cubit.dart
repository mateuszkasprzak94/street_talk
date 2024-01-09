import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'emotions_content_state.dart';

class EmotionsContentCubit extends Cubit<EmotionsContentState> {
  EmotionsContentCubit() : super(EmotionsContentInitial());
}
