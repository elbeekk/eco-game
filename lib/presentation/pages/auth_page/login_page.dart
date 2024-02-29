import 'package:blurrycontainer/blurrycontainer.dart';
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

import '../../../application/building/building_bloc.dart';
import '../../../application/game/game_bloc.dart';
import '../../../application/message/message_bloc.dart';
import '../../../application/settings/settings_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color borderColor = Colors.white.withOpacity(.8);
  Color errorBorderColor = Colors.red.withOpacity(.6);
  Color inputTextColor = Colors.white;
  Color labelColor = Colors.white;
  TextEditingController usernameCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  TextEditingController confirmPasswordCon = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TransformationController transformationController =
      TransformationController();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BuildingBloc(),
        ),
        BlocProvider(
          create: (context) => GameBloc(),
        ),
        BlocProvider(
          create: (context) => SettingsBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => MessageBloc(),
        ),
      ],
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: Stack(
            children: [
              BlocBuilder<GameBloc, GameState>(
                builder: (context, state) {
                  return InteractiveViewer(
                    minScale: 0.8,
                    scaleEnabled: false,
                    onInteractionEnd: (details) {
                      context.read<GameBloc>().add(
                            GameEvent.changeCurrentPos(
                              pos: Offset(
                                transformationController.value
                                    .getColumn(3)
                                    .gr
                                    .y
                                    .toDouble()
                                    .abs(),
                                transformationController.value
                                    .getColumn(3)
                                    .gr
                                    .x
                                    .toDouble()
                                    .abs(),
                              ),
                            ),
                          );
                    },
                    transformationController: transformationController,
                    maxScale: 1.4,
                    constrained: false,
                    child: Container(
                      height: 1500,
                      width: 2000,
                      color: const Color(0xffC0D470),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/map.png",
                            fit: BoxFit.cover,
                            scale: .1,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: BlurryContainer(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.3),
                    elevation: 0,
                    blur: 3,
                    child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, authState) {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
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
                              constraints: const BoxConstraints(
                                  maxWidth: 350, minWidth: 200),
                              width: MediaQuery.sizeOf(context).width < 610
                                  ? MediaQuery.sizeOf(context).width * 0.82
                                  : MediaQuery.sizeOf(context).width * 0.4,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Form(
                                    key: formState,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        BlocBuilder<AuthBloc, AuthState>(
                                          builder: (context, authState) {
                                            return TextFormField(
                                              controller: usernameCon,
                                              style: TextStyle(
                                                  color: inputTextColor),
                                              validator: authState.isSignUp
                                                  ? AppValidators
                                                      .isNotEmptyValidator
                                                  : null,
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              maxLines: 1,
                                              keyboardType: TextInputType.name,
                                              decoration: InputDecoration(
                                                labelText: 'Username',
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 4),
                                                labelStyle: TextStyle(
                                                    color: labelColor),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color: borderColor)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                borderColor)),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color:
                                                            errorBorderColor)),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                errorBorderColor)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                borderColor)),
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                borderColor)),
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
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                              controller: passwordCon,
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              validator: authState.isSignUp
                                                  ? AppValidators
                                                      .isValidPassword
                                                  : null,
                                              style: TextStyle(
                                                  color: inputTextColor),
                                              obscureText:
                                                  authState.hidePassword1,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 4),
                                                suffixIcon: IconButton(
                                                    onPressed: () {
                                                      context
                                                          .read<AuthBloc>()
                                                          .add(const AuthEvent
                                                              .showPassword1());
                                                    },
                                                    icon: Icon(
                                                      authState.hidePassword1
                                                          ? Ionicons.eye_off
                                                          : Ionicons.eye,
                                                      color: Colors.white,
                                                    )),
                                                labelText: authState.isSignUp
                                                    ? 'New password'
                                                    : "Password",
                                                labelStyle: TextStyle(
                                                    color: labelColor),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color: borderColor)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                borderColor)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                borderColor)),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                        color:
                                                            errorBorderColor)),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                errorBorderColor)),
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        borderSide: BorderSide(
                                                            color:
                                                                borderColor)),
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
                                                keyboardType: TextInputType
                                                    .visiblePassword,
                                                autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                validator: (e) => authState
                                                        .isSignUp
                                                    ? AppValidators
                                                        .isValidConfirmPassword(
                                                            passwordCon.text, e)
                                                    : null,
                                                obscureText:
                                                    authState.hidePassword2,
                                                controller: confirmPasswordCon,
                                                style: TextStyle(
                                                    color: inputTextColor),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 4),
                                                  suffixIcon: IconButton(
                                                    onPressed: () {
                                                      context
                                                          .read<AuthBloc>()
                                                          .add(const AuthEvent
                                                              .showPassword2());
                                                    },
                                                    icon: Icon(
                                                      authState.hidePassword2
                                                          ? Ionicons.eye_off
                                                          : Ionicons.eye,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  labelText: 'Confirm Password',
                                                  labelStyle: TextStyle(
                                                      color: labelColor),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color: borderColor)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  borderColor)),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  borderColor)),
                                                  errorBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      borderSide: BorderSide(
                                                          color:
                                                              errorBorderColor)),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  errorBorderColor)),
                                                  disabledBorder:
                                                      OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          borderSide: BorderSide(
                                                              color:
                                                                  borderColor)),
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
                                              child: BlocBuilder<AuthBloc,
                                                  AuthState>(
                                                builder: (context, authState) {
                                                  return Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: SizedBox(
                                                              height: 44,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        backgroundColor:
                                                                            borderColor.withOpacity(.8)),
                                                                onPressed: () {
                                                                  if (formState
                                                                          .currentState
                                                                          ?.validate() ??
                                                                      false) {
                                                                    if (!authState
                                                                        .isSignUp) {
                                                                      if (usernameCon
                                                                              .text
                                                                              .isNotEmpty &&
                                                                          passwordCon
                                                                              .text
                                                                              .isNotEmpty) {
                                                                        context
                                                                            .read<AuthBloc>()
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
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
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
                                                                            AuthEvent.signUp(
                                                                              username: usernameCon.text.trim(),
                                                                              password: passwordCon.text.trim(),
                                                                              onSuccess: () {
                                                                                Navigator.pushAndRemoveUntil(
                                                                                    context,
                                                                                    MaterialPageRoute(
                                                                                      builder: (context) => const LoginPage(),
                                                                                    ),
                                                                                    (route) => false);
                                                                              },
                                                                              onError: (String error) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    backgroundColor: Colors.red,
                                                                                    content: Text(
                                                                                      error.toString(),
                                                                                      style: const TextStyle(color: Colors.white),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          );
                                                                    }
                                                                  }
                                                                },
                                                                child: authState
                                                                        .isLoading
                                                                    ? const SizedBox(
                                                                        height:
                                                                            25,
                                                                        width:
                                                                            25,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              Colors.black,
                                                                          strokeWidth:
                                                                              0.8,
                                                                        ),
                                                                      )
                                                                    : Text(
                                                                        authState.isSignUp
                                                                            ? "Register"
                                                                            : 'Login',
                                                                        style: const TextStyle(
                                                                            color:
                                                                                Colors.black),
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
                                                                .read<
                                                                    AuthBloc>()
                                                                .add(const AuthEvent
                                                                    .goToLogin());
                                                          },
                                                          child: const Text(
                                                            "< Login",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
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
                                                mainAxisSize: MainAxisSize.min,
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
                                                        style: TextStyle(
                                                            color: borderColor),
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
                                                        child: BlocBuilder<
                                                            AuthBloc,
                                                            AuthState>(
                                                          builder:
                                                              (context, state) {
                                                            return OutlinedButton
                                                                .icon(
                                                              onPressed: () {
                                                                context
                                                                    .read<
                                                                        AuthBloc>()
                                                                    .add(
                                                                      AuthEvent
                                                                          .guest(
                                                                        context:
                                                                            context,
                                                                        onSuccess:
                                                                            () {
                                                                          Navigator.pushAndRemoveUntil(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => const GamePage(),
                                                                              ),
                                                                              (route) => false);
                                                                        },
                                                                        onError:
                                                                            (String
                                                                                error) {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              backgroundColor: Colors.red.shade300,
                                                                              content: Text(error.toString()),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                              },
                                                              style:
                                                                  OutlinedButton
                                                                      .styleFrom(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                ),
                                                                side: BorderSide(
                                                                    color:
                                                                        borderColor),
                                                              ),
                                                              icon: state
                                                                      .isGuestLoading
                                                                  ? const SizedBox
                                                                      .shrink()
                                                                  : Icon(
                                                                      Zocial
                                                                          .guest,
                                                                      color:
                                                                          borderColor,
                                                                    ),
                                                              label: state
                                                                      .isGuestLoading
                                                                  ? const SizedBox(
                                                                      height:
                                                                          25,
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
                                                                      'Guest',
                                                                      style: TextStyle(
                                                                          color:
                                                                              borderColor),
                                                                    ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Expanded(
                                                        child: BlocBuilder<
                                                            AuthBloc,
                                                            AuthState>(
                                                          builder:
                                                              (context, state) {
                                                            return OutlinedButton
                                                                .icon(
                                                              onPressed: () {
                                                                context.read<AuthBloc>().add(AuthEvent
                                                                    .google(
                                                                        context:
                                                                            context,
                                                                        onError:
                                                                            (error) {
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
                                                                        },
                                                                        onLogin:
                                                                            () {
                                                                          Navigator.pushAndRemoveUntil(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => const GamePage(),
                                                                              ),
                                                                              (route) => false);
                                                                        }));
                                                              },
                                                              style:
                                                                  OutlinedButton
                                                                      .styleFrom(
                                                                side: BorderSide(
                                                                    color:
                                                                        borderColor),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                ),
                                                              ),
                                                              icon: state
                                                                      .isGoogleLoading
                                                                  ? const SizedBox
                                                                      .shrink()
                                                                  : Icon(
                                                                      MaterialCommunityIcons
                                                                          .google,
                                                                      color:
                                                                          borderColor,
                                                                    ),
                                                              label: state
                                                                      .isGoogleLoading
                                                                  ? const SizedBox(
                                                                      height:
                                                                          25,
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
                                                                      'Google',
                                                                      style: TextStyle(
                                                                          color:
                                                                              borderColor),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
