import 'dart:developer';

import 'package:eco_game/application/game_bloc.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterLayer extends StatefulWidget {
  const FlutterLayer({super.key});

  @override
  State<FlutterLayer> createState() => _FlutterLayerState();
}

class _FlutterLayerState extends State<FlutterLayer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 200,
                        ),
                        height: MediaQuery.sizeOf(context).height,
                        color: Colors.redAccent,
                        constraints: const BoxConstraints(maxWidth: 300),
                        width: state.menuOpen
                            ? MediaQuery.sizeOf(context).width * 0.25
                            : 0),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      context
                                          .read<GameBloc>()
                                          .add(const GameEvent.showMenu());
                                    },
                                    icon: Icon(
                                      state.menuOpen
                                          ? Icons.menu_open_outlined
                                          : Icons.menu,
                                      color: Colors.orange,
                                    )),
                                if (!state.energyOpen &&
                                    !state.ecoOpen &&
                                    !state.energyOpen)
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            context.read<GameBloc>().add(
                                                const GameEvent.showEco());
                                          },
                                          child: SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: Image.asset(
                                                    'assets/images/png/eco.png',
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 20,
                                                    margin:
                                                        const EdgeInsets.all(
                                                            3),
                                                    decoration: BoxDecoration(
                                                        color: Colors.green
                                                            .withOpacity(.6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            context.read<GameBloc>().add(
                                                const GameEvent.showEnergy());
                                          },
                                          child: SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: Image.asset(
                                                    'assets/images/png/energy.png',
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 20,
                                                    margin:
                                                        const EdgeInsets.all(
                                                            3),
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                                0xfff1d212)
                                                            .withOpacity(.9),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  constraints: const BoxConstraints(
                                      maxHeight: 300, maxWidth: 450),
                                  height: state.energyOpen ||
                                          state.ecoOpen ||
                                          state.energyOpen
                                      ? MediaQuery.sizeOf(context).height *
                                          0.3
                                      : 0,
                                  width: state.energyOpen ||
                                          state.ecoOpen ||
                                          state.energyOpen
                                      ? MediaQuery.sizeOf(context).width * 0.3
                                      : 0,
                                  color: Colors.redAccent,
                                  child: Text(
                                    'Google',
                                    style: GoogleFonts.vt323(fontSize: 45),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (!state.shopOpen)
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: IconButton(
                                        onPressed: () {
                                          log('showshop');
                                          context.read<GameBloc>().add(
                                              const GameEvent.showShop());
                                        },
                                        icon: const Icon(
                                          Ionicons.ios_construct,
                                          color: Colors.white,
                                          size: 70,
                                        )),
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedContainer(
                duration: const Duration(
                  milliseconds: 200,
                ),
                height: state.shopOpen
                    ? MediaQuery.sizeOf(context).height * 0.33
                    : 0,
                color: Colors.orange.withOpacity(.4),
                constraints: const BoxConstraints(maxHeight: 350),
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<GameBloc>()
                                  .add(const GameEvent.closeAll());
                            },
                            child: Image.asset(
                              'assets/images/game_assets/button/images/UI_Flat_Cross_Large.png',
                              scale: .7,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
