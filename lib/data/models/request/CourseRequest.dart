class CourseRequest {
  CourseRequest({
      this.form, 
      this.materials,});

  CourseRequest.fromJson(dynamic json) {
    form = json['form'];
    materials = json['materials'] != null ? json['materials'].cast<num>() : [];
  }
  num? form;
  List<num>? materials;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['form'] = form;
    map['materials'] = materials;
    return map;
  }

}