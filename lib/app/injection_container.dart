import 'package:get_it/get_it.dart';
import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart';
import 'package:street_talk/app/data/remote_data_sources/emotions_name_remote_data_sorce.dart';
import 'package:street_talk/app/data/remote_data_sources/situation_page_remote_data_source.dart';
import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart';
import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart';
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart';
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart';
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart';
import 'package:street_talk/app/domain/repositories/street_repository.dart';
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/cubit/situation_cubit.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/cubit/street_cubit.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/cubit/welcome_goodbye_cubit.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Bloc
  getIt.registerFactory(
      () => EmotionsPageCubit(emotionsNameRepository: getIt()));
  getIt.registerFactory(
      () => EmotionsContentCubit(emotionsContentRepository: getIt()));
  getIt.registerFactory(() => SituationCubit(situationRepository: getIt()));
  getIt.registerFactory(() => StreetCubit(streetRepository: getIt()));
  getIt.registerFactory(
      () => WelcomeGoodbyeCubit(welcomeGoobyeRepository: getIt()));

  // Repositories
  getIt
      .registerFactory(() => EmotionsNameRepository(remoteDataSource: getIt()));
  getIt.registerFactory(
      () => EmotionsContentRepository(remoteDataSource: getIt()));
  getIt.registerFactory(() => StreetRepository(remoteDataSource: getIt()));
  getIt.registerFactory(() => SituationRepository(remoteDataSource: getIt()));
  getIt.registerFactory(
      () => WelcomeGoodbyeRepository(welcomeGoodbyeMockedDataSource: getIt()));

  // DataSources
  getIt.registerFactory(() => EmotionsNameMockedDataSource());
  getIt.registerFactory(() => EmotionsContentMockedDataSource());
  getIt.registerFactory(() => SituationMockedDataSource());
  getIt.registerFactory(() => StreetMockedDataSource());
  getIt.registerFactory(() => WelcomeGoodbyeMockedDataSource());
}
