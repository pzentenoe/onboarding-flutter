import 'package:flutter/material.dart';

class PurchaseItem extends StatelessWidget {
  final String fecha;
  final int total;
  final int amount;

  PurchaseItem({
    @required this.fecha,
    @required this.total,
    @required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: const Color(0x14000000),
                offset: Offset(0, 3),
                blurRadius: 15,
                spreadRadius: 0)
          ],
          color: const Color(0xfffafafa)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(fecha),
          Text("${total}"),
          Text("${amount}"),
        ],
      ),
    );
  }
}
