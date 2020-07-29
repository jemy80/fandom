import 'package:dio/dio.dart';
import 'package:fandom/src/fandom.dart';

Future<void> main() async {
  var fandom = Fandom('https://marvel.fandom.com',
      (path) => Dio().get(path).then((value) => value.data));
  var result = await fandom.search.list('Wolverine');
  print('result: ${result.items.first.snippet}');
}
