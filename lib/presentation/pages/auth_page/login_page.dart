import 'dart:developer';

import 'package:eco_game/application/auth/auth_bloc.dart';
import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color borderColor = Colors.grey.withOpacity(.6);
  Color inputTextColor = Colors.white;
  Color labelColor = Colors.grey.shade500;
  TextEditingController usernameCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: usernameCon,
                        style: TextStyle(color: inputTextColor),
                        decoration: InputDecoration(
                          labelText: 'username',
                          labelStyle: TextStyle(color: labelColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: passwordCon,
                        style: TextStyle(color: inputTextColor),
                        decoration: InputDecoration(
                          labelText: 'password',
                          labelStyle: TextStyle(color: labelColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: borderColor)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    backgroundColor: borderColor),
                                onPressed: () {
                                  log('pressed');
                                  context.read<AuthBloc>().add(
                                        AuthEvent.login(
                                            username: usernameCon.text.trim(),
                                            password: passwordCon.text.trim(),
                                            onSuccess: () {
                                              log('success');
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const GamePage(),
                                                  ));
                                            },
                                            onError: (error) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    error.toString(),
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.grey.shade200),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 1,
                            endIndent: 5,
                            color: borderColor,
                          ),
                        ),
                        Text(
                          "or access quickly",
                          style: TextStyle(color: borderColor),
                        ),
                        Expanded(
                          child: Divider(
                            indent: 5,
                            height: 1,
                            color: borderColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              side: BorderSide(color: borderColor),
                            ),
                            icon: Icon(
                              Zocial.guest,
                              color: borderColor,
                            ),
                            label: Text(
                              'Guest',
                              style: TextStyle(color: borderColor),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: borderColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            icon: Icon(
                              MaterialCommunityIcons.google,
                              color: borderColor,
                            ),
                            label: Text(
                              'Google',
                              style: TextStyle(color: borderColor),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
