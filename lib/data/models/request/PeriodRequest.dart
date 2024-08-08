class PeriodRequest {
  PeriodRequest({
      this.shift, 
      this.time, 
      this.form, 
      this.day,});

  PeriodRequest.fromJson(dynamic json) {
    shift = json['shift'];
    time = json['time'];
    form = json['form'];
    day = json['day'] != null ? json['day'].cast<num>() : [];
  }
  String? shift;
  String? time;
  num? form;
  List<num>? day;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shift'] = shift;
    map['time'] = time;
    map['form'] = form;
    map['day'] = day;
    return map;
  }

}