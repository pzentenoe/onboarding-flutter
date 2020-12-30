import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/authentication/bloc/login_bloc.dart';
import 'package:onboarding/authentication/cubit/login_cubit.dart';

class InputPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        initialValue: '',
        obscureText: true,
        decoration: InputDecoration(hintText: 'Password'),
        onChanged: (value) {
          //context.read<LoginBloc>().add(PasswordChanged(password: value));
          context.read<LoginCubit>().passwordChanged(value);
        },
      ),
    );
  }
}
