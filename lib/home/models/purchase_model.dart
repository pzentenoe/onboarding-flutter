import 'dart:convert';

PurchaseModel purchaseModelFromJson(String str) => PurchaseModel.fromJson(json.decode(str));

String purchaseModelToJson(PurchaseModel data) => json.encode(data.toJson());

class PurchaseModel {
  PurchaseModel({
    this.fecha,
    this.total,
    this.amount,
  });

  String fecha;
  int total;
  int amount;

  factory PurchaseModel.fromJson(Map<String, dynamic> json) => PurchaseModel(
    fecha: json["fecha"],
    total: json["total"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "fecha": fecha,
    "total": total,
    "amount": amount,
  };
}