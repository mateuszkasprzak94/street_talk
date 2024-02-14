import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart';
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart';

class MockWelcomeGoodbyeDataSource extends Mock
    implements WelcomeGoodbyeRetrofitDataSource {}

void main() {
  late WelcomeGoodbyeRepository sut;
  late MockWelcomeGoodbyeDataSource dataSource;

  setUp(() {
    dataSource = MockWelcomeGoodbyeDataSource();
    sut = WelcomeGoodbyeRepository(welcomeGoodbyeDataSource: dataSource);
  });

  group('getWelcomeGoodbyeData', () {
    test('should call remoteDataSource.getWelcomeGoodbyeData() method',
        () async {
      // 1
      when(() => dataSource.getWelcomeGoodbyeData())
          .thenAnswer((_) async => []);
      // 2
      await sut.getWelcomeGoodbyeData();
      // 3
      verify(() => dataSource.getWelcomeGoodbyeData()).called(1);
    });
  });
}
