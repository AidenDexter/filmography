class Genre {
  final List<String> genre;

  Genre(this.genre);

  factory Genre.fromJson(List<dynamic> json) {
    return Genre(
      json.map((e) => e as String).toList(),
    );
  }
}
