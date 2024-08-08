import 'package:madrasa_task/domain/entities/SpecifyResponse.dart';

class SpecifyResponseDto extends SpecifyResponseEntity{
  SpecifyResponseDto({
      super.id,
      super.stage,
      super.classroom,
      super.courseStudy,
      super.form,});

  SpecifyResponseDto.fromJson(dynamic json) {
    id = json['id'];
    stage = json['stage'] != null ? json['stage'].cast<String>() : [];
    classroom = json['classroom'] != null ? json['classroom'].cast<String>() : [];
    courseStudy = json['course_study'] != null ? json['course_study'].cast<String>() : [];
    form = json['form'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['stage'] = stage;
    map['classroom'] = classroom;
    map['course_study'] = courseStudy;
    map['form'] = form;
    return map;
  }

}