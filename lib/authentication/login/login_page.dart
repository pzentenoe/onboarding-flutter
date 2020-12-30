import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/authentication/bloc/login_bloc.dart';
import 'package:onboarding/authentication/cubit/login_cubit.dart';
import 'package:onboarding/authentication/widgets/input_password.dart';
import 'package:onboarding/authentication/widgets/input_user.dart';
import 'package:onboarding/authentication/widgets/login_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocProvider(
        //create: (context) => LoginBloc(),
        create: (context) => LoginCubit(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[800],
            title: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputUser(),
                SizedBox(height: 20),
                InputPassword(),
                SizedBox(height: 20),
                LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
