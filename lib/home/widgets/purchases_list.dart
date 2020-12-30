import 'package:flutter/material.dart';
import 'package:onboarding/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/home/widgets/purchase_item.dart';

class PurchasesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeCubit>().state;
    if (state is HomeLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is HomeSuccess) {
      return ListView.builder(
          itemCount: state.purchases.length,
          itemBuilder: (context, i) {
        final purchase = state.purchases[i];
        return PurchaseItem(
            fecha: purchase.fecha,
            total: purchase.total,
            amount: purchase.amount);
      });
    } else {
      return Container(
        child: Center(
          child: Text(
            "Fallo al cargar las compras X(",
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    }
  }
}
