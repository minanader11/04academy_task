import 'package:madrasa_task/domain/entities/ClassResponse.dart';

class ClassResponseDto extends ClassResponseEntity{
  ClassResponseDto({
      super.id,
      super.session,
      super.hour,
      super.form,
      super.subscription,});

  ClassResponseDto.fromJson(dynamic json) {
    id = json['id'];
    session = json['session'];
    hour = json['hour'];
    form = json['form'];
    subscription = json['subscription'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['session'] = session;
    map['hour'] = hour;
    map['form'] = form;
    map['subscription'] = subscription;
    return map;
  }

}