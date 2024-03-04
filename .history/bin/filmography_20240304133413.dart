import 'dart:io';
import 'dart:convert';

import 'package:filmography/filmography.dart';

void main(List<String> arguments) {
  var myFile = File('bin\\film.json');
  var json = jsonDecode(myFile.readAsStringSync());
  var movie = Movie.fromJson(json);

  print(movie);

  var myFile2 = File('bin\\output.json');
  var encoder = JsonEncoder.withIndent(' ');
  myFile2.writeAsString(jsonEncode(encoder.convert(movie)));
}