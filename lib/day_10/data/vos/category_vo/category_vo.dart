import 'package:json_annotation/json_annotation.dart';

part 'category_vo.g.dart';

@JsonSerializable()
class CategoryVo {
  //Member

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'slug')
  final String slug;

  CategoryVo(this.id, this.name, this.slug);

//factory Constructor
  factory CategoryVo.fromJson(Map<String, dynamic> json) =>
      _$CategoryVoFromJson(json);
}
