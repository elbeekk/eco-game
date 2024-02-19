import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_game/application/auth/auth_bloc.dart';
import 'package:eco_game/infrastructure/services/validators.dart';
import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:eco_game/presentation/pages/splash/splash_google.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color borderColor = Colors.grey.withOpacity(.6);
  Color errorBorderColor = Colors.red.withOpacity(.6);
  Color inputTextColor = Colors.white;
  Color labelColor = Colors.grey.shade500;
  TextEditingController usernameCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  TextEditingController confirmPasswordCon = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void initState() {
    googleLogOut();
    super.initState();
  }

  googleLogOut() async {
    await GoogleSignIn().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Center(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, authState) {
              return Row(
                mainAxisAlignment: authState.isSignUp
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.center,
                children: [
                  // BlocBuilder<AuthBloc, AuthState>(
                  //   builder: (context, authState) {
                  //     if (authState.isSignUp) {
                  //       return Container(
                  //         height: 70,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(200),
                  //           color: Colors.grey.shade300,
                  //         ),
                  //
                  //         padding: const EdgeInsets.symmetric(horizontal: 15),
                  //         child: Row(
                  //           children: [
                  //             CircleAvatar(
                  //               radius: 20,
                  //               backgroundColor: Colors.grey,
                  //               foregroundImage: CachedNetworkImageProvider(
                  //                   authState.googleSignInAccount?.photoUrl ??
                  //                       ''),
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                     "${authState.googleSignInAccount?.displayName}"),
                  //                 Text(
                  //                     "${authState.googleSignInAccount?.email}"),
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       );
                  //     } else {
                  //       return const SizedBox.shrink();
                  //     }
                  //   },
                  // ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Form(
                          key: formState,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, authState) {
                                  return TextFormField(
                                    controller: usernameCon,
                                    style: TextStyle(color: inputTextColor),
                                    validator: authState.isSignUp
                                        ? AppValidators.isNotEmptyValidator
                                        : null,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    maxLines: 1,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      labelText: 'Username',
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 4),
                                      labelStyle: TextStyle(color: labelColor),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: errorBorderColor)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: errorBorderColor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, authState) {
                                  return TextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    controller: passwordCon,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: authState.isSignUp
                                        ? AppValidators.isValidPassword
                                        : null,
                                    style: TextStyle(color: inputTextColor),
                                    obscureText: authState.hidePassword1,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 4),
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            context.read<AuthBloc>().add(
                                                const AuthEvent
                                                    .showPassword1());
                                          },
                                          icon: Icon(authState.hidePassword1
                                              ? Ionicons.eye_off
                                              : Ionicons.eye)),
                                      labelText: authState.isSignUp
                                          ? 'New password'
                                          : "Password",
                                      labelStyle: TextStyle(color: labelColor),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: errorBorderColor)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: errorBorderColor)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide:
                                              BorderSide(color: borderColor)),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, authState) {
                                  if (authState.isSignUp) {
                                    return TextFormField(
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (e) => authState.isSignUp
                                          ? AppValidators
                                              .isValidConfirmPassword(
                                                  passwordCon.text, e)
                                          : null,
                                      obscureText: authState.hidePassword2,
                                      controller: confirmPasswordCon,
                                      style: TextStyle(color: inputTextColor),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 4),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            context.read<AuthBloc>().add(
                                                const AuthEvent
                                                    .showPassword2());
                                          },
                                          icon: Icon(authState.hidePassword2
                                              ? Ionicons.eye_off
                                              : Ionicons.eye),
                                        ),
                                        labelText: 'Confirm Password',
                                        labelStyle:
                                            TextStyle(color: labelColor),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide:
                                                BorderSide(color: borderColor)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide:
                                                BorderSide(color: borderColor)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide:
                                                BorderSide(color: borderColor)),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                                color: errorBorderColor)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                                color: errorBorderColor)),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide:
                                                BorderSide(color: borderColor)),
                                      ),
                                    );
                                  } else {
                                    return const SizedBox.shrink();
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: BlocBuilder<AuthBloc, AuthState>(
                                      builder: (context, authState) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: SizedBox(
                                                    height: 44,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              backgroundColor:
                                                                  borderColor),
                                                      onPressed: () {
                                                        if (formState
                                                                .currentState
                                                                ?.validate() ??
                                                            false) {
                                                          if (!authState
                                                              .isSignUp) {
                                                            if (usernameCon.text
                                                                    .isNotEmpty &&
                                                                passwordCon.text
                                                                    .isNotEmpty) {
                                                              context
                                                                  .read<
                                                                      AuthBloc>()
                                                                  .add(
                                                                    AuthEvent.login(
                                                                        username: usernameCon.text.trim(),
                                                                        password: passwordCon.text.trim(),
                                                                        onSuccess: () {
                                                                          Navigator.pushAndRemoveUntil(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => const GamePage(),
                                                                              ),
                                                                              (route) => false);
                                                                        },
                                                                        onError: (error) {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              backgroundColor: Colors.red,
                                                                              content: Text(
                                                                                error.toString(),
                                                                                style: const TextStyle(color: Colors.white),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }),
                                                                  );
                                                            }
                                                          } else {
                                                            context
                                                                .read<
                                                                    AuthBloc>()
                                                                .add(
                                                                  AuthEvent
                                                                      .signUp(
                                                                    username:
                                                                        usernameCon
                                                                            .text
                                                                            .trim(),
                                                                    password:
                                                                        passwordCon
                                                                            .text
                                                                            .trim(),
                                                                    onSuccess:
                                                                        () {
                                                                      Navigator.pushAndRemoveUntil(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                const SplashPage(),
                                                                          ),
                                                                          (route) => false);
                                                                    },
                                                                    onError: (String
                                                                        error) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          backgroundColor:
                                                                              Colors.red,
                                                                          content:
                                                                              Text(
                                                                            error.toString(),
                                                                            style:
                                                                                const TextStyle(color: Colors.white),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                          }
                                                        }
                                                      },
                                                      child: authState.isLoading
                                                          ? const SizedBox(
                                                              height: 25,
                                                              width: 25,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: Colors
                                                                    .white,
                                                                strokeWidth:
                                                                    0.8,
                                                              ),
                                                            )
                                                          : Text(
                                                              authState.isSignUp
                                                                  ? "Register"
                                                                  : 'Login',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200),
                                                            ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            if (authState.isSignUp)
                                              GestureDetector(
                                                  onTap: () {
                                                    context
                                                        .read<AuthBloc>()
                                                        .add(const AuthEvent
                                                            .goToLogin());
                                                  },
                                                  child: Text(
                                                    "Login",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade400),
                                                  ))
                                          ],
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, authState) {
                                  if (!authState.isSignUp) {
                                    return Column(
                                      children: [
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
                                              style:
                                                  TextStyle(color: borderColor),
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
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: BlocBuilder<AuthBloc,
                                                  AuthState>(
                                                builder: (context, state) {
                                                  return OutlinedButton.icon(
                                                    onPressed: () {
                                                      // context
                                                      //     .read<AuthBloc>()
                                                      //     .add(const AuthEvent.guest());
                                                      Navigator
                                                          .pushAndRemoveUntil(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const GamePage(),
                                                              ),
                                                              (route) => false);
                                                    },
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      side: BorderSide(
                                                          color: borderColor),
                                                    ),
                                                    icon: Icon(
                                                      Zocial.guest,
                                                      color: borderColor,
                                                    ),
                                                    label: Text(
                                                      'Guest',
                                                      style: TextStyle(
                                                          color: borderColor),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: BlocBuilder<AuthBloc,
                                                  AuthState>(
                                                builder: (context, state) {
                                                  return OutlinedButton.icon(
                                                    onPressed: () {
                                                      context
                                                          .read<AuthBloc>()
                                                          .add(AuthEvent.google(
                                                              onError: (error) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                backgroundColor:
                                                                    Colors.red,
                                                                content: Text(
                                                                  error
                                                                      .toString(),
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            );
                                                          }, onLogin: () {
                                                            Navigator
                                                                .pushAndRemoveUntil(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const GamePage(),
                                                                    ),
                                                                    (route) =>
                                                                        false);
                                                          }));
                                                    },
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      side: BorderSide(
                                                          color: borderColor),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                    ),
                                                    icon: Icon(
                                                      MaterialCommunityIcons
                                                          .google,
                                                      color: borderColor,
                                                    ),
                                                    label: Text(
                                                      'Google',
                                                      style: TextStyle(
                                                          color: borderColor),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
