import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/presentation/pages/flame_audio/audio.dart';
import 'package:flame/game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          height: MediaQuery.sizeOf(context).height,
          color: Colors.white.withOpacity(.2),
          constraints: const BoxConstraints(maxWidth: 200),
          width: state.menuOpen ? MediaQuery.sizeOf(context).width * 0.25 : 0,
          child: state.menuOpen
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /// Google profile info
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height * 0.13,
                            width: MediaQuery.sizeOf(context).height * 0.13,
                            constraints: const BoxConstraints(
                                maxWidth: 100, maxHeight: 100),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        'https://scontent.ftas5-1.fna.fbcdn.net/v/t39.30808-1/406011764_879049673842471_1031136137589123993_n.jpg?stp=cp0_dst-jpg_p40x40&_nc_cat=104&ccb=1-7&_nc_sid=11e7ab&_nc_ohc=jhpQj6n69DYAX_yr5KP&_nc_ht=scontent.ftas5-1.fna&oh=00_AfDDh6FanY0PQLsmLSZtS7vjbRmVaV3iklItyxMB6Fm9rQ&oe=65D423B3')),
                                color: Colors.white),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text(
                                  "Elbek Mirzamakhmudov",
                                  style: GoogleFonts.vt323(fontSize: 20,color: Colors.blue),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'elbekmirzamakhmudov@gmail.com',
                                  style: GoogleFonts.vt323(fontSize: 15,color: Colors.blue),
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Music button

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          Row(children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                    Colors.blueAccent.withOpacity(.1),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                    side: const BorderSide(color: Colors.blueAccent)),
                                onPressed: () async {
                                },
                                icon: const Icon(
                                  Pixel.ac,
                                  color: Colors.blueAccent,
                                ),
                                label: Text(
                                  "Settings",
                                  style: GoogleFonts.vt323(
                                      fontSize: 20, color: Colors.blueAccent),
                                ),
                              ),
                            ),
                          ],),
                          BlocBuilder<GameBloc, GameState>(
                            buildWhen: (previous, current) => previous.isMusicPlaying!=current.isMusicPlaying,
                            builder: (context, state) {
                              return Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueAccent.withOpacity(.1),
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero),
                                          side: const BorderSide(color: Colors.blueAccent)),
                                      onPressed: () async {
                                        context
                                            .read<GameBloc>()
                                            .add(const GameEvent.musicMuteUnmute());
                                      },
                                      icon: const Icon(
                                        Pixel.music,
                                        color: Colors.blueAccent,
                                      ),
                                      label: Text(
                                        state.isMusicPlaying ? "Mute" : "Unmute",
                                        style: GoogleFonts.vt323(
                                            fontSize: 20, color: Colors.blueAccent),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.red.withOpacity(.1),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                      side: const BorderSide(color: Colors.red)),
                                  onPressed: () {
                                    // exit(0);
                                    SystemChannels.platform
                                        .invokeMethod('SystemNavigator.pop');

                                  },
                                  icon: const Icon(
                                    Pixel.arrowbarleft,
                                    color: Colors.red,
                                  ),
                                  label: Text(
                                    "Exit",
                                    style:
                                    GoogleFonts.vt323(fontSize: 20, color: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
],
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
