import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/data/remote_data_sources/emotions_name_remote_data_sorce.dart';
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart';

class MockEmotionsNameDataSource extends Mock
    implements EmotionsNameMockedDataSource {}

void main() {
  late EmotionsNameRepository sut;
  late MockEmotionsNameDataSource dataSource;

  setUp(() {
    dataSource = MockEmotionsNameDataSource();
    sut = EmotionsNameRepository(remoteDataSource: dataSource);
  });

  group('getEmotionsName', () {
    test('should call remoteDataSource.getEmotionsName() method', () async {
      // 1
      when(() => dataSource.getEmotionsName()).thenAnswer((_) async => []);
      // 2
      await sut.getEmotionsName();
      // 3
      verify(() => dataSource.getEmotionsName()).called(1);
    });
  });
}
