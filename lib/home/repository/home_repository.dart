import 'dart:io';
import 'package:onboarding/home/widgets/purchase_item.dart';

abstract class HomeRepository {
  Future<List<PurchaseItem>> getPurchases();
}

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<PurchaseItem>> getPurchases() {
    final purchases = List.generate(
        100,
        (index) => PurchaseItem(
            fecha: "fecha-${index + 1}",
            total: index + 100,
            amount: index + 200));

    return Future.delayed(Duration(seconds: 8), () => purchases);
  }
}
