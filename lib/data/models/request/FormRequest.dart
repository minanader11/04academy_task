class FormRequest {
  FormRequest({
      this.firstName, 
      this.familyName, 
      this.age, 
      this.gender, 
      this.nationality, 
      this.whatsapp, 
      this.email, 
      this.difficulties, 
      this.description, 
      this.subject, 
      this.userIp,});

  FormRequest.fromJson(dynamic json) {
    firstName = json['first_name'];
    familyName = json['family_name'];
    age = json['age'];
    gender = json['gender'];
    nationality = json['nationality'];
    whatsapp = json['whatsapp'];
    email = json['email'];
    difficulties = json['difficulties'];
    description = json['description'];
    subject = json['subject'];
    userIp = json['user_ip'];
  }
  String? firstName;
  String? familyName;
  num? age;
  String? gender;
  String? nationality;
  String? whatsapp;
  String? email;
  String? difficulties;
  String? description;
  String? subject;
  String? userIp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['family_name'] = familyName;
    map['age'] = age;
    map['gender'] = gender;
    map['nationality'] = nationality;
    map['whatsapp'] = whatsapp;
    map['email'] = email;
    map['difficulties'] = difficulties;
    map['description'] = description;
    map['subject'] = subject;
    map['user_ip'] = userIp;
    return map;
  }

}