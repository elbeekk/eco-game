import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_game/application/auth/auth_bloc.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:eco_game/main.dart';
import 'package:eco_game/presentation/pages/auth_page/login_page.dart';
import 'package:eco_game/presentation/pages/buttons_layer/veiws/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, gameState) {
        return Column(
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(
                  milliseconds: 100,
                ),
                color: Colors.white.withOpacity(.2),
                constraints: const BoxConstraints(maxWidth: 200),
                width: gameState.menuOpen
                    ? MediaQuery.sizeOf(context).width * 0.25
                    : 0,
                child: !gameState.settingsOpen
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          /// Google profile info
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.13,
                                  width:
                                      MediaQuery.sizeOf(context).height * 0.13,
                                  constraints: const BoxConstraints(
                                      maxWidth: 100, maxHeight: 100),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: CachedNetworkImageProvider(
                                            (LocalStorage.getMe()?.photoUrl ??
                                                        '')
                                                    .isNotEmpty
                                                ? LocalStorage.getMe()?.photoUrl??''
                                                : 'https://images.macrumors.com/t/n4CqVR2eujJL-GkUPhv1oao_PmI=/1600x/article-new/2019/04/guest-user-250x250.jpg')),
                                    color: Colors.transparent,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Column(
                                    children: [
                                      Text(
                                        LocalStorage.getMe()?.firstName != null
                                            ? "${LocalStorage.getMe()?.firstName ?? ''} ${LocalStorage.getMe()?.lastName ?? ''}"
                                            : "Guest",
                                        style: GoogleFonts.vt323(
                                            fontSize: (22 + 2 * 2
                                                // state.flutterScale
                                                )
                                                .toDouble(),
                                            color: Colors.blue),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        LocalStorage.getMe()?.username ?? '',
                                        style: GoogleFonts.vt323(
                                            fontSize: (18 + 2 * 2
                                                // state.flutterScale
                                                )
                                                .toDouble(),
                                            color: Colors.blue),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: OutlinedButton.icon(
                                        style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.blueAccent
                                                .withOpacity(.1),
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.zero),
                                            side: const BorderSide(
                                                color: Colors.blueAccent)),
                                        onPressed: () {
                                          context.read<GameBloc>().add(
                                              const GameEvent.showSettings());
                                        },
                                        icon: const Icon(
                                          Pixel.ac,
                                          color: Colors.blueAccent,
                                        ),
                                        label: Text(
                                          "Settings",
                                          style: GoogleFonts.vt323(
                                              fontSize: (18 + 2 * 2
                                                  // state.flutterScale
                                                  )
                                                  .toDouble(),
                                              color: Colors.blueAccent),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                BlocBuilder<SettingsBloc, SettingsState>(
                                  buildWhen: (previous, current) =>
                                      previous.isMusicPlaying !=
                                      current.isMusicPlaying,
                                  builder: (context, settingsState) {
                                    return Row(
                                      children: [
                                        Expanded(
                                          child: OutlinedButton.icon(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors
                                                    .blueAccent
                                                    .withOpacity(.1),
                                                shape:
                                                    const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.zero),
                                                side: const BorderSide(
                                                    color: Colors.blueAccent)),
                                            onPressed: () async {
                                              if (settingsState
                                                  .isMusicPlaying) {
                                                context
                                                    .read<SettingsBloc>()
                                                    .add(const SettingsEvent
                                                        .musicMute());
                                              } else {
                                                context
                                                    .read<SettingsBloc>()
                                                    .add(const SettingsEvent
                                                        .musicUnmute());
                                              }
                                            },
                                            icon: const Icon(
                                              Pixel.music,
                                              color: Colors.blueAccent,
                                            ),
                                            label: Text(
                                              settingsState.isMusicPlaying
                                                  ? "Mute"
                                                  : "Unmute",
                                              style: GoogleFonts.vt323(
                                                  fontSize: (18 +
                                                          2 *
                                                              settingsState
                                                                  .textSize)
                                                      .toDouble(),
                                                  color: Colors.blueAccent),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: BlocBuilder<AuthBloc, AuthState>(
                                        builder: (context, authState) {
                                          return OutlinedButton.icon(
                                            clipBehavior: Clip.none,
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.red.withOpacity(.1),
                                                shape:
                                                    const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.zero),
                                                side: const BorderSide(
                                                    color: Colors.red)),
                                            onPressed: () {
                                              context
                                                  .read<AuthBloc>()
                                                  .add(AuthEvent.logOut(
                                                    onError: (error) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          backgroundColor:
                                                              Colors.red,
                                                          content: Text(
                                                            error.toString(),
                                                            style:
                                                                const TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    onSuccess: () {
                                                      Navigator
                                                          .pushAndRemoveUntil(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const MyApp(),
                                                              ),
                                                              (route) => false);
                                                    },
                                                  ));
                                            },
                                            icon: authState.isLoading
                                                ? const SizedBox.shrink()
                                                : Icon(
                                                    Pixel.arrowbarleft,
                                                    color: Colors.red,
                                                    size: gameState.menuOpen
                                                        ? 20
                                                        : 0,
                                                  ),
                                            label: authState.isLoading
                                                ? const SizedBox(
                                                    height: 20,
                                                    width: 20,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Colors.red,
                                                      strokeWidth: 1,
                                                    ),
                                                  )
                                                : Text(
                                                    "Log Out",
                                                    style: GoogleFonts.vt323(
                                                        fontSize: (18 + 2 * 2

                                                            // state.flutterScale
                                                            )
                                                            .toDouble(),
                                                        color: Colors.red),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : gameState.menuOpen
                        ? const SettingsView()
                        : const SizedBox.shrink(),
              ),
            ),
          ],
        );
      },
    );
  }
}
