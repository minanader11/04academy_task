import 'package:madrasa_task/domain/entities/PayResponse.dart';

class PayResponseDto extends PayResponseEntity{
  PayResponseDto({
      super.message,
      super.paymentId,
      super.price,
      super.status,});

  PayResponseDto.fromJson(dynamic json) {
    message = json['message'];
    paymentId = json['payment_id'];
    price = json['price'];
    status = json['status'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['payment_id'] = paymentId;
    map['price'] = price;
    map['status'] = status;
    return map;
  }

}