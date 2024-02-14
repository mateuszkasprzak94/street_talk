import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart';
import 'package:street_talk/app/domain/repositories/street_repository.dart';

class MockStreetDataSource extends Mock implements StreetRetrofitDataSource {}

void main() {
  late StreetRepository sut;
  late MockStreetDataSource dataSource;

  setUp(() {
    dataSource = MockStreetDataSource();
    sut = StreetRepository(remoteDataSource: dataSource);
  });

  group('getStreetData', () {
    test('should call remoteDataSource.getStreetData() method', () async {
      // 1
      when(() => dataSource.getStreetData()).thenAnswer((_) async => []);
      // 2
      await sut.getStreetData();
      // 3
      verify(() => dataSource.getStreetData()).called(1);
    });
  });
}
