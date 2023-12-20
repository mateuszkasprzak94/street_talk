import 'package:bloc/bloc.dart';

part 'colloquialisms_page_state.dart';

class ColloquialismsPageCubit extends Cubit<ColloquialismsPageState> {
  ColloquialismsPageCubit() : super(ColloquialismsPageState());

  Future<void> changePage() async {
    emit(ColloquialismsPageState(page: state.page));
  }
}
