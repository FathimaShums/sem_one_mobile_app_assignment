class TheCategory {
  String _title;

  String _image;

  TheCategory(this._title, this._image);

  String get title => _title;
  set title(String title) {
    _title = title;
  }

  String get image => _image;
  set image(String image) {
    _image = image;
  }
}
