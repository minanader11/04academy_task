import 'package:madrasa_task/domain/entities/FromResponse.dart';

class FormResponseDto extends FormResponseEntity{
  FormResponseDto({
      super.id,
      super.firstName,
      super.familyName,
      super.age,
      super.gender,
      super.nationality,
      super.whatsapp,
      super.email,
      super.difficulties,
      super.description,
      super.subject,
      super.userIp,});

  FormResponseDto.fromJson(dynamic json) {
    id = json['id'];
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


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
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