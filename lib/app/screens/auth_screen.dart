import 'package:flutter/material.dart';
import 'package:my_souq/components/declarations.dart';

enum AuthEnum {
  signin,
  signup
}

class AuthScreen extends StatefulWidget {
  static const String routName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthEnum _auth = AuthEnum.signup;
  final _signUpKey = GlobalKey<FormState>();
  final _signInKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Declarations.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                  'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                title: const Text("New Customer", style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Radio(
                  activeColor: Declarations.secondaryColor,
                  value: AuthEnum.signup,
                  groupValue: _auth,
                  onChanged: (AuthEnum? val) {
                    setState(() {
                        _auth = val ?? AuthEnum.signup;
                    });
                  },
                ),
              ),
              if (_auth == AuthEnum.signup)
                Form(
                    key: _signUpKey,
                    child: Column (

                    )
                ),
              ListTile(
                title: const Text("Have an account ?", style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Radio(
                  activeColor: Declarations.secondaryColor,
                  value: AuthEnum.signin,
                  groupValue: _auth,
                  onChanged: (AuthEnum? val) {
                    setState(() {
                      _auth = val ?? AuthEnum.signin;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
