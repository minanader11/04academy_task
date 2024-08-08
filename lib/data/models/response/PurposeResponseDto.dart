import 'package:madrasa_task/domain/entities/PurposeResponse.dart';

class PurposeResponseDto extends PurposeResponseEntity{
  PurposeResponseDto({
      super.id,
      super.englishData,
      super.arabicData,
      super.forData,});

  PurposeResponseDto.fromJson(dynamic json) {
    id = json['id'];
    englishData = json['english_data'];
    arabicData = json['arabic_data'];
    forData = json['for_data'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['english_data'] = englishData;
    map['arabic_data'] = arabicData;
    map['for_data'] = forData;
    return map;
  }

}