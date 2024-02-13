// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart'
    as _i3;
import 'package:street_talk/app/data/remote_data_sources/emotions_name_remote_data_sorce.dart'
    as _i5;
import 'package:street_talk/app/data/remote_data_sources/quiz_remote_data_source.dart'
    as _i11;
import 'package:street_talk/app/data/remote_data_sources/situation_page_remote_data_source.dart'
    as _i16;
import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart'
    as _i18;
import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart'
    as _i21;
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart'
    as _i4;
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart'
    as _i6;
import 'package:street_talk/app/domain/repositories/flashcards_one_repository.dart'
    as _i8;
import 'package:street_talk/app/domain/repositories/flashcards_three_repository.dart'
    as _i9;
import 'package:street_talk/app/domain/repositories/flashcards_two_repository.dart'
    as _i10;
import 'package:street_talk/app/domain/repositories/quiz_repository.dart'
    as _i12;
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart'
    as _i17;
import 'package:street_talk/app/domain/repositories/street_repository.dart'
    as _i19;
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart'
    as _i22;
import 'package:street_talk/app/drawer/drawer_content/quiz/cubit/quiz_cubit.dart'
    as _i24;
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart'
    as _i7;
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart'
    as _i23;
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/cubit/situation_cubit.dart'
    as _i25;
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/cubit/street_cubit.dart'
    as _i26;
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/cubit/welcome_goodbye_cubit.dart'
    as _i27;
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/cubit/set_one_cubit.dart'
    as _i13;
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/cubit/set_three_cubit.dart'
    as _i14;
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart'
    as _i15;
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart'
    as _i20;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.EmotionsContentDioDataSource>(
        () => _i3.EmotionsContentDioDataSource());
    gh.factory<_i4.EmotionsContentRepository>(() =>
        _i4.EmotionsContentRepository(
            remoteDataSource: gh<_i3.EmotionsContentDioDataSource>()));
    gh.factory<_i5.EmotionsNameMockedDataSource>(
        () => _i5.EmotionsNameMockedDataSource());
    gh.factory<_i6.EmotionsNameRepository>(() => _i6.EmotionsNameRepository(
        remoteDataSource: gh<_i5.EmotionsNameMockedDataSource>()));
    gh.factory<_i7.EmotionsPageCubit>(() => _i7.EmotionsPageCubit(
        emotionsNameRepository: gh<_i6.EmotionsNameRepository>()));
    gh.factory<_i8.FlashCardsOneRepository>(
        () => _i8.FlashCardsOneRepository());
    gh.factory<_i9.FlashCardsThreeRepository>(
        () => _i9.FlashCardsThreeRepository());
    gh.factory<_i10.FlashCardsTwoRepository>(
        () => _i10.FlashCardsTwoRepository());
    gh.factory<_i11.QuizQuestionDioDataSource>(
        () => _i11.QuizQuestionDioDataSource());
    gh.factory<_i12.QuizRepository>(() => _i12.QuizRepository(
        remoteDataSource: gh<_i11.QuizQuestionDioDataSource>()));
    gh.factory<_i13.SetOneCubit>(() => _i13.SetOneCubit(
        flashCardsRepository: gh<_i8.FlashCardsOneRepository>()));
    gh.factory<_i14.SetThreeCubit>(() => _i14.SetThreeCubit(
        flashCardsRepository: gh<_i9.FlashCardsThreeRepository>()));
    gh.factory<_i15.SetTwoCubit>(() => _i15.SetTwoCubit(
        flashCardsRepository: gh<_i10.FlashCardsTwoRepository>()));
    gh.factory<_i16.SituationDioDataSource>(
        () => _i16.SituationDioDataSource());
    gh.factory<_i17.SituationRepository>(() => _i17.SituationRepository(
        remoteDataSource: gh<_i16.SituationDioDataSource>()));
    gh.factory<_i18.StreetDioDataSource>(() => _i18.StreetDioDataSource());
    gh.factory<_i19.StreetRepository>(() => _i19.StreetRepository(
        remoteDataSource: gh<_i18.StreetDioDataSource>()));
    gh.factory<_i20.TasksCubit>(() => _i20.TasksCubit());
    gh.factory<_i21.WelcomeGoodbyeDioDataSource>(
        () => _i21.WelcomeGoodbyeDioDataSource());
    gh.factory<_i22.WelcomeGoodbyeRepository>(() =>
        _i22.WelcomeGoodbyeRepository(
            welcomeGoodbyeMockedDataSource:
                gh<_i21.WelcomeGoodbyeDioDataSource>()));
    gh.factory<_i23.EmotionsContentCubit>(() => _i23.EmotionsContentCubit(
        emotionsContentRepository: gh<_i4.EmotionsContentRepository>()));
    gh.factory<_i24.QuizCubit>(
        () => _i24.QuizCubit(quizRepository: gh<_i12.QuizRepository>()));
    gh.factory<_i25.SituationCubit>(() => _i25.SituationCubit(
        situationRepository: gh<_i17.SituationRepository>()));
    gh.factory<_i26.StreetCubit>(
        () => _i26.StreetCubit(streetRepository: gh<_i19.StreetRepository>()));
    gh.factory<_i27.WelcomeGoodbyeCubit>(() => _i27.WelcomeGoodbyeCubit(
        welcomeGoobyeRepository: gh<_i22.WelcomeGoodbyeRepository>()));
    return this;
  }
}
