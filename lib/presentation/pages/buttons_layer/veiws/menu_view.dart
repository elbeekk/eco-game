import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_game/application/game/game_bloc.dart';
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
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(
                  milliseconds: 100,
                ),
                color: Colors.white.withOpacity(.2),
                constraints: const BoxConstraints(maxWidth: 200),
                width: state.menuOpen ? MediaQuery.sizeOf(context).width * 0.25 : 0,
                child: !state.settingsOpen
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
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                Text(
                                  "Elbek Mirzamakhmudov",
                                  style: GoogleFonts.vt323(
                                      fontSize: (22+2*state.flutterScale).toDouble(), color: Colors.blue),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'elbekmirzamakhmudov@gmail.com',
                                  style: GoogleFonts.vt323(
                                      fontSize: (18+2*state.flutterScale).toDouble(), color: Colors.blue),
                                  overflow: TextOverflow.ellipsis,
                                )
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
                                      backgroundColor:
                                      Colors.blueAccent.withOpacity(.1),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                      side: const BorderSide(
                                          color: Colors.blueAccent)),
                                  onPressed: () {
                                    context
                                        .read<GameBloc>()
                                        .add(const GameEvent.showSettings());
                                  },
                                  icon: const Icon(
                                    Pixel.ac,
                                    color: Colors.blueAccent,
                                  ),
                                  label: Text(
                                    "Settings",
                                    style: GoogleFonts.vt323(
                                        fontSize: (18 + 2 * state.flutterScale)
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
                          BlocBuilder<GameBloc, GameState>(
                            buildWhen: (previous, current) =>
                            previous.isMusicPlaying !=
                                current.isMusicPlaying,
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
                                          side: const BorderSide(
                                              color: Colors.blueAccent)),
                                      onPressed: () async {
                                        if(state.isMusicPlaying) {
                                          context.read<GameBloc>().add(
                                              const GameEvent.musicMute());
                                        }else{
                                          context.read<GameBloc>().add(
                                              const GameEvent.musicUnmute());

                                        }
                                      },
                                      icon: const Icon(
                                        Pixel.music,
                                        color: Colors.blueAccent,
                                      ),
                                      label: Text(
                                        state.isMusicPlaying
                                            ? "Mute"
                                            : "Unmute",
                                        style: GoogleFonts.vt323(
                                            fontSize: (18+2*state.flutterScale).toDouble(),
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
                                child: OutlinedButton.icon(
                                  clipBehavior: Clip.none,
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor:
                                      Colors.red.withOpacity(.1),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero),
                                      side:
                                      const BorderSide(color: Colors.red)),
                                  onPressed: () {
                                    // exit(0);
                                    SystemChannels.platform
                                        .invokeMethod('SystemNavigator.pop');
                                  },
                                  icon: Icon(
                                    Pixel.arrowbarleft,
                                    color: Colors.red,
                                    size: state.menuOpen ? 20 : 0,
                                  ),
                                  label: Text(
                                    "Exit",
                                    style: GoogleFonts.vt323(
                                        fontSize: (18+2*state.flutterScale).toDouble(), color: Colors.red),
                                    overflow: TextOverflow.ellipsis,
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
                    : state.menuOpen
                    ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              context
                                  .read<GameBloc>()
                                  .add(const GameEvent.showSettings());
                            },
                            icon: const Icon(
                              Pixel.arrowleft,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Settings',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.vt323(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: (22 + 2 * state.flutterScale)
                                      .toDouble()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Map Zoom",
                      style: GoogleFonts.vt323(
                          color: Colors.blue,
                          fontSize:
                          (18 + 2 * state.flutterScale).toDouble()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<GameBloc>()
                                .add(const GameEvent.decrement(true));
                          },
                          icon: const Icon(
                            Pixel.minus,
                            size: 18,
                            color: Colors.red,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              state.flameScale >= 1
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Icon(
                              state.flameScale >= 2
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Icon(
                              state.flameScale >= 3
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Icon(
                              state.flameScale >= 4
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            context
                                .read<GameBloc>()
                                .add(const GameEvent.increment(true));
                          },
                          icon: const Icon(
                            Pixel.plus,
                            size: 18,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Text Size",
                      style: GoogleFonts.vt323(
                          color: Colors.blue,
                          fontSize:
                          (18 + 2 * state.flutterScale).toDouble()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<GameBloc>()
                                .add(const GameEvent.decrement(false));
                          },
                          icon: const Icon(
                            Pixel.minus,
                            size: 18,
                            color: Colors.red,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              state.flutterScale >= 1
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Icon(
                              state.flutterScale >= 2
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Icon(
                              state.flutterScale >= 3
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Icon(
                              state.flutterScale >= 4
                                  ? Icons.square
                                  : Icons.square_outlined,
                              size: 15,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            context
                                .read<GameBloc>()
                                .add(const GameEvent.increment(false));
                          },
                          icon: const Icon(
                            Pixel.plus,
                            size: 18,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                    : const SizedBox.shrink(),
              ),
            ),
          ],
        );
      },
    );
  }
}
