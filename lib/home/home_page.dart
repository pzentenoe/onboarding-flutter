import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/home/cubit/home_cubit.dart';
import 'package:onboarding/home/repository/home_repository.dart';
import 'package:onboarding/home/widgets/header_purchase.dart';
import 'package:onboarding/home/widgets/purchase_item.dart';
import 'package:onboarding/home/widgets/purchases_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: BlocProvider(
        create: (context) =>
            HomeCubit(homeRepository: HomeRepositoryImpl())..loadPurchases(),
        child: Container(
          child: Column(
            children: [
              HeaderPurchase(),
              Container(height: 500, child: PurchasesList()),
            ],
          ),
        ),
      ),
    );
  }
}
