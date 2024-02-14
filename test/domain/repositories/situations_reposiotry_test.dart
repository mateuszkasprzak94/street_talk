import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/data/remote_data_sources/situation_page_remote_data_source.dart';
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart';

class MockSituationDataSource extends Mock
    implements SituationRetrofitDataSource {}

void main() {
  late SituationRepository sut;
  late MockSituationDataSource dataSource;

  setUp(() {
    dataSource = MockSituationDataSource();
    sut = SituationRepository(remoteDataSource: dataSource);
  });

  group('getSituationData', () {
    test('should call remoteDataSource.getSituationData() method', () async {
      // 1
      when(() => dataSource.getSituationData()).thenAnswer((_) async => []);
      // 2
      await sut.getSituationData();
      // 3
      verify(() => dataSource.getSituationData()).called(1);
    });
  });
}
