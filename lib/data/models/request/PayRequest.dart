class PayRequest {
  PayRequest({
      this.cardNumber, 
      this.cvc, 
      this.expDate, 
      this.cardHolder, 
      this.form,});

  PayRequest.fromJson(dynamic json) {
    cardNumber = json['card_number'];
    cvc = json['cvc'];
    expDate = json['exp_date'];
    cardHolder = json['card_holder'];
    form = json['form'];
  }
  String? cardNumber;
  num? cvc;
  String? expDate;
  String? cardHolder;
  num? form;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['card_number'] = cardNumber;
    map['cvc'] = cvc;
    map['exp_date'] = expDate;
    map['card_holder'] = cardHolder;
    map['form'] = form;
    return map;
  }

}