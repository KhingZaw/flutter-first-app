import 'package:first_app/day_10/data/vos/product_vo/product_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  //Member
  @JsonKey(name: 'data')
  final List<ProductVo>? data;

  @JsonKey(name: 'status')
  final int? status;

  @JsonKey(name: 'message')
  final String? message;
//Constructor
  ProductResponse(this.data, this.status, this.message);

//factory Constructor
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
