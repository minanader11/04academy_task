class ClassRequest {
  ClassRequest({
      this.session, 
      this.hour, 
      this.form, 
      this.subscription,});

  ClassRequest.fromJson(dynamic json) {
    session = json['session'];
    hour = json['hour'];
    form = json['form'];
    subscription = json['subscription'];
  }
  String? session;
  String? hour;
  num? form;
  num? subscription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['session'] = session;
    map['hour'] = hour;
    map['form'] = form;
    map['subscription'] = subscription;
    return map;
  }

}