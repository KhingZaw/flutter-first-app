// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVo _$ProductVoFromJson(Map<String, dynamic> json) => ProductVo(
      json['id'] as String?,
      json['title'] as String?,
      (json['price'] as num?)?.toInt(),
      json['description'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['slug'] as String?,
      json['image'] as String?,
      json['categoryVo'] == null
          ? null
          : CategoryVo.fromJson(json['categoryVo'] as Map<String, dynamic>),
      json['createdByVo'] == null
          ? null
          : CreatedByVo.fromJson(json['createdByVo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductVoToJson(ProductVo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'categoryVo': instance.categoryVo,
      'description': instance.description,
      'createdByVo': instance.createdByVo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'image': instance.image,
    };
