import 'package:first_app/day_10/data/vos/category_vo/category_vo.dart';
import 'package:first_app/day_10/data/vos/created_by_vo/created_by_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_vo.g.dart';

@JsonSerializable()
class ProductVo {
  //Members
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'price')
  final int? price;

  @JsonKey(name: 'categoryVo')
  final CategoryVo? categoryVo;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'createdByVo')
  final CreatedByVo? createdByVo;

  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @JsonKey(name: 'updatedAt')
  final String? updatedAt;

  @JsonKey(name: 'slug')
  final String? slug;

  @JsonKey(name: 'image')
  String? image;

  //Constructor
  ProductVo(this.id, this.title, this.price, this.description, this.createdAt,
      this.updatedAt, this.slug, this.image, this.categoryVo, this.createdByVo);

//factory Constructor
  factory ProductVo.fromJson(Map<String, dynamic> json) =>
      _$ProductVoFromJson(json);

  @override
  String toString() {
    return 'ProductVo{id: $id,title: $title, price: $price,description: $description,createdAt: $createdAt,updateAt: $updatedAt,slug: $slug,image: $image,categoryVo: $categoryVo,createdByVo: $createdByVo}';
  }
}
