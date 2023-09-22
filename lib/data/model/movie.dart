class Movie {
  late final String _imageUrl;
  late final String _title;
  late final String _description;

  Movie(this._title, this._imageUrl, this._description);

  Movie.fromJson(Map<String, dynamic> json) {
    _imageUrl = json['imageUrl'];
    _description = json['description'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = _imageUrl;
    data['title'] = _title;
    data['description'] = _description;
    return data;
  }
}
