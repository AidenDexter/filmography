import 'dart:io';
import 'dart:convert';

import 'package:filmography/src/movie.dart';

void main(List<String> arguments) {
  var myFile = File('bin\\film.json');
  var json = jsonDecode(myFile.readAsStringSync());
  var movie = Movie.fromJson(json);
  print(movie);
}
