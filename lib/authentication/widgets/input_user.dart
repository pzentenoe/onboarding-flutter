import 'package:flutter/material.dart';
import 'package:onboarding/authentication/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/authentication/cubit/login_cubit.dart';

class InputUser extends StatefulWidget {
  @override
  _InputUserState createState() => _InputUserState();
}

class _InputUserState extends State<InputUser> {
  TextEditingController inputUserController;
  //LoginBloc _loginBloc;
  LoginCubit _loginCubit;

  String name = 'Pablo';

  @override
  void initState() {
    super.initState();
    //_loginBloc = context.read<LoginBloc>();
    _loginCubit = context.read<LoginCubit>();
    inputUserController = new TextEditingController(text: '');

    inputUserController.addListener(() {
      //_loginBloc.add(UserChanged(username: inputUserController.text));
      _loginCubit.usernameChanged(inputUserController.text);
    });
  }

  @override
  void dispose() {
    inputUserController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller: inputUserController,
        decoration: InputDecoration(hintText: 'Usuario'),
      ),
    );
  }
}
