import 'package:madrasa_task/domain/entities/PeriodResponse.dart';

class PeriodResponseDto extends PeriodResponseEntity{
  PeriodResponseDto({
      super.id,
      super.shift,
      super.time,
      super.form,
      super.day,});

  PeriodResponseDto.fromJson(dynamic json) {
    id = json['id'];
    shift = json['shift'];
    time = json['time'];
    form = json['form'];
    day = json['day'] != null ? json['day'].cast<num>() : [];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['shift'] = shift;
    map['time'] = time;
    map['form'] = form;
    map['day'] = day;
    return map;
  }

}