import 'package:flutter/material.dart';
import 'package:profileactivity/UI/log_in.dart';
import 'package:profileactivity/UI/register.dart';
class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
    bool Showloginpage = true;

    void togglePages() {
      setState(() {
        Showloginpage = !Showloginpage;
      });
    }
    @override
    Widget build(BuildContext context) {
      if (Showloginpage) {
        return LoginPage(onTap: togglePages);
      }else {
        return RegisterPage( onTap: togglePages);
      }
  }
}
