import 'package:madrasa_task/domain/entities/MaterialResponse.dart';

class MaterialResponseDto extends MaterialResponseEntity {
  MaterialResponseDto({
      super.id,
      super.englishData,
      super.arabicData,
      super.forData,
      super.image,});

  MaterialResponseDto.fromJson(dynamic json) {
    id = json['id'];
    englishData = json['english_data'];
    arabicData = json['arabic_data'];
    forData = json['for_data'];
    image = json['image'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['english_data'] = englishData;
    map['arabic_data'] = arabicData;
    map['for_data'] = forData;
    map['image'] = image;
    return map;
  }

}