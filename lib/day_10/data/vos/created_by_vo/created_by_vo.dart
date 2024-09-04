import 'package:json_annotation/json_annotation.dart';

part 'created_by_vo.g.dart';

@JsonSerializable()
class CreatedByVo {
  //Member

  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  //Constructor
  CreatedByVo(this.role, this.id, this.name);

//factory Constructor
  factory CreatedByVo.fromJson(Map<String, dynamic> json) =>
      _$CreatedByVoFromJson(json);
}
