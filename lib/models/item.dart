import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final String title;
  final String type;
  final String description;
  final String filename;
  final int height;
  final int width;
  final double price;
  final int rating;
  bool isChecked = false;

  Item(
      {this.title,
      this.type,
      this.description,
      this.filename,
      this.height,
      this.width,
      this.price,
      this.rating});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'],
      type: json['type'],
      description: json['description'],
      filename: json['filename'],
      height: json['height'],
      width: json['width'],
      price: json['price'],
      rating: json['rating'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    data['description'] = this.description;
    data['filename'] = this.filename;
    data['height'] = this.height;
    data['width'] = this.width;
    data['price'] = this.price;
    data['rating'] = this.rating;
    return data;
  }

  @override
  List<Object> get props => [
        this.title,
        this.type,
        this.description,
        this.filename,
        this.height,
        this.width,
        this.price,
        this.rating
      ];
}
