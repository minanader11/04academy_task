class SpecificationRequest {
  SpecificationRequest({
      this.form, 
      this.stage, 
      this.classroom, 
      this.courseStudy,});

  SpecificationRequest.fromJson(dynamic json) {
    form = json['form'];
    stage = json['stage'] != null ? json['stage'].cast<String>() : [];
    classroom = json['classroom'] != null ? json['classroom'].cast<String>() : [];
    courseStudy = json['course_study'] != null ? json['course_study'].cast<String>() : [];
  }
  num? form;
  List<String>? stage;
  List<String>? classroom;
  List<String>? courseStudy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['form'] = form;
    map['stage'] = stage;
    map['classroom'] = classroom;
    map['course_study'] = courseStudy;
    return map;
  }

}