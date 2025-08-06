import 'package:flutter/material.dart';
import 'package:login/viewmodels/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewmodel = Provider.of<LoginViewmodel>(context);

    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: viewmodel.updateUserName,
            decoration: InputDecoration(labelText: 'Usuário'),
          ),
          ElevatedButton(
            onPressed: viewmodel.isValid() ? () => print('Login OK') : null,
            child: Text('Entrar'),
          )
        ],
      ),
    );
  }
}