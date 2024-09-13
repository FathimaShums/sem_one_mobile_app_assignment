class FoodItem {
  int _id;
  String _title;
  String _description;
  String _image;

  double _price;

  FoodItem(this._id, this._title, this._description, this._image, this._price);
  int get id => _id;
  set id(int id) {
    _id = id;
  }

  String get title => _title;
  set title(String title) {
    _title = title;
  }

  String get description => _description;
  set description(String description) {
    _description = description;
  }

  String get image => _image;
  set image(String image) {
    _image = image;
  }

  double get price => _price;
  set price(double price) {
    _price = price;
  }
}
