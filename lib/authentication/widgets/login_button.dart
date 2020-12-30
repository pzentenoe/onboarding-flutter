import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//import 'package:onboarding/authentication/bloc/login_bloc.dart';
import 'package:onboarding/authentication/cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginCubit>().state;
    return MaterialButton(
      disabledColor: Colors.grey[200],
      height: 50,
      minWidth: 120,
      color: Colors.blueGrey,
      child:
          Text("Ingresar", style: TextStyle(color: Colors.white, fontSize: 17)),
      onPressed: state.isValidPassword && state.isValidUsername
          ? () {
              Navigator.pushNamed(context, 'home');
            }
          : null,
    );

    //return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
/*    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return MaterialButton(
        disabledColor: Colors.grey[200],
        height: 50,
        minWidth: 120,
        color: Colors.blueGrey,
        child: Text("Ingresar",
            style: TextStyle(color: Colors.white, fontSize: 17)),
        onPressed: state.isValidPassword && state.isValidUsername
            ? () {
                Navigator.pushNamed(context, 'home');
              }
            : null,
      );
    });*/
  }
}
