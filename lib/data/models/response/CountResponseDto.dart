import 'package:madrasa_task/domain/entities/CountResponse.dart';

class CountResponseDto extends CountResponseEntity{
  CountResponseDto({
      super.id,
      super.studentCount,
      super.form,
      super.purposes,});

  CountResponseDto.fromJson(dynamic json) {
    id = json['id'];
    studentCount = json['student_count'];
    form = json['form'];
    purposes = json['purposes'] != null ? json['purposes'].cast<num>() : [];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['student_count'] = studentCount;
    map['form'] = form;
    map['purposes'] = purposes;
    return map;
  }

}