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
import 'package:street_talk/app/data/remote_data_sources/situation_page_remote_data_source.dart'
    as _i8;
import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart'
    as _i10;
import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart'
    as _i12;
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart'
    as _i4;
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart'
    as _i6;
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart'
    as _i9;
import 'package:street_talk/app/domain/repositories/street_repository.dart'
    as _i11;
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart'
    as _i13;
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart'
    as _i7;
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart'
    as _i14;
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/cubit/situation_cubit.dart'
    as _i15;
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/cubit/street_cubit.dart'
    as _i16;
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/cubit/welcome_goodbye_cubit.dart'
    as _i17;

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
    gh.factory<_i3.EmotionsContentMockedDataSource>(
        () => _i3.EmotionsContentMockedDataSource());
    gh.factory<_i4.EmotionsContentRepository>(() =>
        _i4.EmotionsContentRepository(
            remoteDataSource: gh<_i3.EmotionsContentMockedDataSource>()));
    gh.factory<_i5.EmotionsNameMockedDataSource>(
        () => _i5.EmotionsNameMockedDataSource());
    gh.factory<_i6.EmotionsNameRepository>(() => _i6.EmotionsNameRepository(
        remoteDataSource: gh<_i5.EmotionsNameMockedDataSource>()));
    gh.factory<_i7.EmotionsPageCubit>(() => _i7.EmotionsPageCubit(
        emotionsNameRepository: gh<_i6.EmotionsNameRepository>()));
    gh.factory<_i8.SituationMockedDataSource>(
        () => _i8.SituationMockedDataSource());
    gh.factory<_i9.SituationRepository>(() => _i9.SituationRepository(
        remoteDataSource: gh<_i8.SituationMockedDataSource>()));
    gh.factory<_i10.StreetMockedDataSource>(
        () => _i10.StreetMockedDataSource());
    gh.factory<_i11.StreetRepository>(() => _i11.StreetRepository(
        remoteDataSource: gh<_i10.StreetMockedDataSource>()));
    gh.factory<_i12.WelcomeGoodbyeMockedDataSource>(
        () => _i12.WelcomeGoodbyeMockedDataSource());
    gh.factory<_i13.WelcomeGoodbyeRepository>(() =>
        _i13.WelcomeGoodbyeRepository(
            welcomeGoodbyeMockedDataSource:
                gh<_i12.WelcomeGoodbyeMockedDataSource>()));
    gh.factory<_i14.EmotionsContentCubit>(() => _i14.EmotionsContentCubit(
        emotionsContentRepository: gh<_i4.EmotionsContentRepository>()));
    gh.factory<_i15.SituationCubit>(() => _i15.SituationCubit(
        situationRepository: gh<_i9.SituationRepository>()));
    gh.factory<_i16.StreetCubit>(
        () => _i16.StreetCubit(streetRepository: gh<_i11.StreetRepository>()));
    gh.factory<_i17.WelcomeGoodbyeCubit>(() => _i17.WelcomeGoodbyeCubit(
        welcomeGoobyeRepository: gh<_i13.WelcomeGoodbyeRepository>()));
    return this;
  }
}
