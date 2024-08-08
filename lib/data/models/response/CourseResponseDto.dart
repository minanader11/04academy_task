import 'package:madrasa_task/domain/entities/CourseResponse.dart';

class CourseResponseDto extends CourseResponseEntity {
  CourseResponseDto({
      super.id,
      super.form,
      super.materials,});

  CourseResponseDto.fromJson(dynamic json) {
    id = json['id'];
    form = json['form'];
    materials = json['materials'] != null ? json['materials'].cast<num>() : [];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['form'] = form;
    map['materials'] = materials;
    return map;
  }

}