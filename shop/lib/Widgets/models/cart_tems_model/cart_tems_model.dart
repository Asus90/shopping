import 'package:json_annotation/json_annotation.dart';

import 'rating.dart';

part 'cart_tems_model.g.dart';

@JsonSerializable()
class CartTemsModel {
  int? id;
  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'price')
  double? price;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'category')
  String? category;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'rating')
  Rating? rating;

  CartTemsModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory CartTemsModel.fromJson(Map<String, dynamic> json) {
    return _$CartTemsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartTemsModelToJson(this);
}
