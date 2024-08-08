import 'package:madrasa_task/domain/entities/SubscriptionResponse.dart';

class SubscriptionResponseDto extends SubscriptionResponseEntity{
  SubscriptionResponseDto({
      super.id,
      super.term,
      super.termArabic,
      super.discount,
      super.period,
      super.periodArabic,
      super.price,
      super.forData,});

  SubscriptionResponseDto.fromJson(dynamic json) {
    id = json['id'];
    term = json['term'];
    termArabic = json['term_arabic'];
    discount = json['discount'];
    period = json['period'];
    periodArabic = json['period_arabic'];
    price = json['price'];
    forData = json['for_data'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['term'] = term;
    map['term_arabic'] = termArabic;
    map['discount'] = discount;
    map['period'] = period;
    map['period_arabic'] = periodArabic;
    map['price'] = price;
    map['for_data'] = forData;
    return map;
  }

}