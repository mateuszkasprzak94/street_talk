// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i14;
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:street_talk/app/cubit/internet_cubit.dart' as _i13;
import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart'
    as _i16;
import 'package:street_talk/app/data/remote_data_sources/emotions_name_remote_data_sorce.dart'
    as _i3;
import 'package:street_talk/app/data/remote_data_sources/quiz_remote_data_source.dart'
    as _i17;
import 'package:street_talk/app/data/remote_data_sources/situation_page_remote_data_source.dart'
    as _i18;
import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart'
    as _i19;
import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart'
    as _i20;
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart'
    as _i22;
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart'
    as _i8;
import 'package:street_talk/app/domain/repositories/flashcards_one_repository.dart'
    as _i4;
import 'package:street_talk/app/domain/repositories/flashcards_three_repository.dart'
    as _i5;
import 'package:street_talk/app/domain/repositories/flashcards_two_repository.dart'
    as _i6;
import 'package:street_talk/app/domain/repositories/quiz_repository.dart'
    as _i25;
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart'
    as _i26;
import 'package:street_talk/app/domain/repositories/street_repository.dart'
    as _i24;
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart'
    as _i21;
import 'package:street_talk/app/drawer/drawer_content/quiz/cubit/quiz_cubit.dart'
    as _i29;
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart'
    as _i9;
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart'
    as _i27;
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/cubit/situation_cubit.dart'
    as _i30;
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/cubit/street_cubit.dart'
    as _i28;
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/cubit/welcome_goodbye_cubit.dart'
    as _i23;
import 'package:street_talk/app/features/pages/exercise_page/cubit/exercise_cubit.dart'
    as _i7;
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_one/cubit/set_one_cubit.dart'
    as _i12;
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_three/cubit/set_three_cubit.dart'
    as _i11;
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_sets_page/flashcards_sets_page_content/set_two/cubit/set_two_cubit.dart'
    as _i10;
import 'package:street_talk/app/injection_container.dart' as _i31;

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
    final registerModule = _$RegisterModule();
    gh.factory<_i3.EmotionsNameMockedDataSource>(
        () => _i3.EmotionsNameMockedDataSource());
    gh.factory<_i4.FlashCardsOneRepository>(
        () => _i4.FlashCardsOneRepository());
    gh.factory<_i5.FlashCardsThreeRepository>(
        () => _i5.FlashCardsThreeRepository());
    gh.factory<_i6.FlashCardsTwoRepository>(
        () => _i6.FlashCardsTwoRepository());
    gh.factory<_i7.ExerciseCubit>(() => _i7.ExerciseCubit());
    gh.factory<_i8.EmotionsNameRepository>(() => _i8.EmotionsNameRepository(
        remoteDataSource: gh<_i3.EmotionsNameMockedDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i9.EmotionsPageCubit>(() => _i9.EmotionsPageCubit(
        emotionsNameRepository: gh<_i8.EmotionsNameRepository>()));
    gh.factory<_i10.SetTwoCubit>(() => _i10.SetTwoCubit(
        flashCardsRepository: gh<_i6.FlashCardsTwoRepository>()));
    gh.factory<_i11.SetThreeCubit>(() => _i11.SetThreeCubit(
        flashCardsRepository: gh<_i5.FlashCardsThreeRepository>()));
    gh.factory<_i12.SetOneCubit>(() => _i12.SetOneCubit(
        flashCardsRepository: gh<_i4.FlashCardsOneRepository>()));
    gh.factory<_i13.InternetCubit>(
        () => _i13.InternetCubit(connectivity: gh<_i14.Connectivity>()));
    gh.lazySingleton<_i15.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i16.EmotionsContentRetrofitDataSource>(
        () => _i16.EmotionsContentRetrofitDataSource(gh<_i15.Dio>()));
    gh.factory<_i17.QuizQuestionRetrofitDataSource>(
        () => _i17.QuizQuestionRetrofitDataSource(gh<_i15.Dio>()));
    gh.factory<_i18.SituationRetrofitDataSource>(
        () => _i18.SituationRetrofitDataSource(gh<_i15.Dio>()));
    gh.factory<_i19.StreetRetrofitDataSource>(
        () => _i19.StreetRetrofitDataSource(gh<_i15.Dio>()));
    gh.factory<_i20.WelcomeGoodbyeRetrofitDataSource>(
        () => _i20.WelcomeGoodbyeRetrofitDataSource(gh<_i15.Dio>()));
    gh.factory<_i21.WelcomeGoodbyeRepository>(() =>
        _i21.WelcomeGoodbyeRepository(
            welcomeGoodbyeDataSource:
                gh<_i20.WelcomeGoodbyeRetrofitDataSource>()));
    gh.factory<_i22.EmotionsContentRepository>(() =>
        _i22.EmotionsContentRepository(
            remoteDataSource: gh<_i16.EmotionsContentRetrofitDataSource>()));
    gh.factory<_i23.WelcomeGoodbyeCubit>(() => _i23.WelcomeGoodbyeCubit(
        welcomeGoobyeRepository: gh<_i21.WelcomeGoodbyeRepository>()));
    gh.factory<_i24.StreetRepository>(() => _i24.StreetRepository(
        remoteDataSource: gh<_i19.StreetRetrofitDataSource>()));
    gh.factory<_i25.QuizRepository>(() => _i25.QuizRepository(
        remoteDataSource: gh<_i17.QuizQuestionRetrofitDataSource>()));
    gh.factory<_i26.SituationRepository>(() => _i26.SituationRepository(
        remoteDataSource: gh<_i18.SituationRetrofitDataSource>()));
    gh.factory<_i27.EmotionsContentCubit>(() => _i27.EmotionsContentCubit(
        emotionsContentRepository: gh<_i22.EmotionsContentRepository>()));
    gh.factory<_i28.StreetCubit>(
        () => _i28.StreetCubit(streetRepository: gh<_i24.StreetRepository>()));
    gh.factory<_i29.QuizCubit>(
        () => _i29.QuizCubit(quizRepository: gh<_i25.QuizRepository>()));
    gh.factory<_i30.SituationCubit>(() => _i30.SituationCubit(
        situationRepository: gh<_i26.SituationRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i31.RegisterModule {}
