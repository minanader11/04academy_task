class CountRequest {
  CountRequest({
      this.studentCount, 
      this.form, 
      this.purposes,});

  CountRequest.fromJson(dynamic json) {
    studentCount = json['student_count'];
    form = json['form'];
    purposes = json['purposes'] != null ? json['purposes'].cast<num>() : [];
  }
  String? studentCount;
  num? form;
  List<num>? purposes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['student_count'] = studentCount;
    map['form'] = form;
    map['purposes'] = purposes;
    return map;
  }

}