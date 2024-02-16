import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/presentation/pages/flutter_layer/coin.dart';
import 'package:eco_game/presentation/pages/flutter_layer/menu.dart';
import 'package:eco_game/presentation/pages/flutter_layer/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

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
                    /// MENU
                    const Menu(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// Menu button
                                IconButton(
                                    onPressed: () {
                                      context
                                          .read<GameBloc>()
                                          .add(const GameEvent.showMenu());
                                    },
                                    icon: Icon(
                                      state.menuOpen
                                          ? Pixel.arrowleft
                                          : Pixel.arrowright,
                                      color: Colors.orange,
                                    )),
                                const Spacer(),
                                if (!state.energyOpen &&
                                    !state.ecoOpen &&
                                    !state.energyOpen)

                                  /// Coin button

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<GameBloc>()
                                              .add(const GameEvent.showMoney());
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              "1230${state.money}",
                                              style: GoogleFonts.vt323(
                                                color: Colors.yellow,
                                                fontSize: (24 +
                                                        2 * state.flutterScale)
                                                    .toDouble(),
                                              ),
                                            ),
                                            const Icon(
                                              Pixel.coin,
                                              color: Colors.yellow,
                                            ),
                                          ],
                                        ),
                                      ),

                                      // GestureDetector(
                                      //   onTap: () {
                                      //     context.read<GameBloc>().add(
                                      //         const GameEvent.showEnergy());
                                      //   },
                                      //   child: SizedBox(
                                      //     width: MediaQuery.sizeOf(context)
                                      //             .width *
                                      //         0.15,
                                      //     child: Row(
                                      //       children: [
                                      //         SizedBox(
                                      //           height: 25,
                                      //           width: 25,
                                      //           child: Image.asset(
                                      //             'assets/images/png/energy.png',
                                      //           ),
                                      //         ),
                                      //         Expanded(
                                      //           child: Container(
                                      //             height: 20,
                                      //             margin:
                                      //                 const EdgeInsets.all(3),
                                      //             decoration: BoxDecoration(
                                      //                 color: const Color(
                                      //                         0xfff1d212)
                                      //                     .withOpacity(.9),
                                      //                 borderRadius:
                                      //                     BorderRadius
                                      //                         .circular(10)),
                                      //           ),
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // )
                                    ],
                                  ),

                                /// Coin
                                const Coin(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                  /// Shop button
                                  TweenAnimationBuilder(
                                    tween: IntTween(
                                        begin: state.shopOpen ? 70 : 0,
                                        end: state.shopOpen ? 0 : 70),
                                    duration: const Duration(milliseconds: 200),
                                    builder: (context, value, child) {
                                      return Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: IconButton(
                                          onPressed: () {
                                            context.read<GameBloc>().add(
                                                const GameEvent.showShop());
                                          },
                                          icon: Icon(
                                            Ionicons.ios_construct,
                                            color: Colors.white,
                                            size: value.toDouble(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// SHOP
              const Shop(),
            ],
          ),
        );
      },
    );
  }
}
