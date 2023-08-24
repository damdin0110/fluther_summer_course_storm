import 'package:flutter/material.dart';
import 'package:icodegram_app/components/text_input_field.dart';
import 'package:icodegram_app/resources/auth_methods.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _repaetpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: (double.infinity),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(flex: 2, child: Container()),
                  SizedBox(
                    height: 64,
                  ),
                  TextInputField(
                    hintText: "email burtguuleh",
                    editingController: _emailController,
                    isPassword: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextInputField(
                    hintText: "user email",
                    editingController: _usernameController,
                    isPassword: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextInputField(
                    hintText: "nuuts ug",
                    editingController: _passwordController,
                    isPassword: true,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextInputField(
                    hintText: "nuuts ug davtah",
                    editingController: _repaetpasswordController,
                    isPassword: true,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 24),
                  InkWell(
                      onTap: () {
                        AuthMethods().signUpUser(
                            email: _emailController.text,
                            password: _passwordController.text,
                            username: _usernameController.text);
                      },
                      child: Container(
                        child: Text('burtguuleh'),
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ))),
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(),
                  )
                ]),
          ),
        ),
      );
}
