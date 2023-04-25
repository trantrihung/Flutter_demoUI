// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MenuCategory {
  final String image;
  final String title;

  MenuCategory({
    required this.image,
    required this.title,
  });

  MenuCategory copyWith({
    String? image,
    String? title,
  }) {
    return MenuCategory(
      image: image ?? this.image,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
    };
  }

  factory MenuCategory.fromMap(Map<String, dynamic> map) {
    return MenuCategory(
      image: map['image'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuCategory.fromJson(String source) =>
      MenuCategory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MenuCategory(image: $image, title: $title)';

  @override
  bool operator ==(covariant MenuCategory other) {
    if (identical(this, other)) return true;

    return other.image == image && other.title == title;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode;
}

List<MenuCategory> menus = [
  MenuCategory(
      image: "assets/images/foody/icon_hamburger.png", title: "hamburger"),
  MenuCategory(image: "assets/images/foody/icon_drink.png", title: "drink"),
  MenuCategory(image: "assets/images/foody/icon_dessert.png", title: "dessert"),
  MenuCategory(image: "assets/images/foody/icon_meat.png", title: "meat"),
  MenuCategory(image: "assets/images/foody/icon_pizza.png", title: "pizza"),
  MenuCategory(image: "assets/images/foody/icon_ramen.png", title: "ramen"),
  MenuCategory(image: "assets/images/foody/icon_vegeta.png", title: "vegeta"),
  MenuCategory(image: "assets/images/foody/icon_more.png", title: "more"),
];
