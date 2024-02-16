import 'dart:math';

import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/shop/shop_bloc.dart';
import 'package:eco_game/infrastructure/data/local_data.dart';
import 'package:eco_game/infrastructure/models/class/shop_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopBloc(),
      child: BlocBuilder<GameBloc, GameState>(
        builder: (context, gameState) {
          return AnimatedContainer(
            duration: const Duration(
              milliseconds: 200,
            ),
            height: gameState.shopOpen
                ? MediaQuery.sizeOf(context).height * 0.45
                : 0,
            // color: Colors.orange.withOpacity(.4),
            constraints: const BoxConstraints(maxHeight: 150),
            width: MediaQuery.sizeOf(context).width,
            child: gameState.shopOpen
                ? Row(
                    children: [
                      Expanded(
                        child: BlocBuilder<ShopBloc, ShopState>(
                          builder: (context, shopState) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: LocalData.shopItems.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                List<ShopItemModel> shopItems =
                                    LocalData.shopItems;
                                shopItems.sort(
                                  (a, b) {
                                    return (a.price ?? 0)
                                        .compareTo(b.price ?? 0);
                                  },
                                );
                                final current = shopItems[index];
                                bool isGenerator = (current.energy ?? 0) > 0;
                                return GestureDetector(
                                  onTap: () {
                                    context
                                        .read<ShopBloc>()
                                        .add(ShopEvent.select(current));
                                  },
                                  child: BlocBuilder<ShopBloc, ShopState>(
                                    builder: (context, shopState) {
                                      return Container(
                                        margin: const EdgeInsets.all(3),
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade300,
                                            border: Border.all(
                                                color:
                                                    shopState.selected?.name ==
                                                            current.name
                                                        ? Colors.orange.shade900
                                                            .withOpacity(.5)
                                                        : Colors.transparent,
                                                width: 3)),
                                        child: Column(
                                          children: [
                                            Expanded(
                                                child: Image.asset(
                                                    current.image ?? '')),
                                            if (gameState.shopOpen)
                                              Row(
                                                children: [
                                                  Icon(
                                                    Pixel.coin,
                                                    color: Colors
                                                        .orangeAccent.shade200,
                                                  ),
                                                  Text(
                                                    current.price.toString() ??
                                                        '',
                                                    style: GoogleFonts.vt323(
                                                        color: Colors.orange,
                                                        fontSize: 18),
                                                  )
                                                ],
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      BlocBuilder<ShopBloc, ShopState>(
                        builder: (context, shopState) {
                          bool isGenerator =
                              (shopState.selected?.energy ?? 0) > 0;
                          return shopState.selected != null
                              ? Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(.5)),
                                        child: Column(
                                          children: [
                                            Text(
                                              shopState.selected?.name ?? '',
                                              style: GoogleFonts.vt323(
                                                  fontSize: 24,
                                                  color: Colors.white),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5, left: 5),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        child: Image.asset(
                                                            shopState.selected
                                                                    ?.image ??
                                                                '')),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if ((shopState
                                                                      .selected
                                                                      ?.people ??
                                                                  0) >
                                                              0)
                                                            Row(
                                                              children: [
                                                                const Icon(
                                                                  Pixel.users,
                                                                  color: Colors
                                                                      .blue,
                                                                ),
                                                                Text(
                                                                  shopState
                                                                          .selected
                                                                          ?.people
                                                                          .toString() ??
                                                                      '',
                                                                  style: GoogleFonts.vt323(
                                                                      color: Colors
                                                                          .blue,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ],
                                                            ),
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Pixel
                                                                    .batterycharging,
                                                                color: isGenerator
                                                                    ? Colors
                                                                        .green
                                                                    : Colors
                                                                        .red,
                                                              ),
                                                              Text(
                                                                "${isGenerator ? "+" : ""}${shopState.selected?.energy} W/h",
                                                                style: GoogleFonts.vt323(
                                                                    color: isGenerator
                                                                        ? Colors
                                                                            .green
                                                                        : Colors
                                                                            .red,
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              const Icon(
                                                                Pixel.clock,
                                                                color: Colors
                                                                    .orange,
                                                              ),
                                                              Text(
                                                                "${shopState.selected?.duration} h",
                                                                style: GoogleFonts.vt323(
                                                                    color: Colors
                                                                        .orange,
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor:
                                                                Colors.green,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4))),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Icon(
                                                              Pixel.coin,
                                                              color:
                                                                  Colors.yellow,
                                                            ),
                                                            Text(
                                                              shopState.selected
                                                                      ?.price
                                                                      .toString() ??
                                                                  '',
                                                              style: GoogleFonts
                                                                  .vt323(
                                                                      color: Colors
                                                                          .yellow,
                                                                      fontSize:
                                                                          18),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink();
                        },
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
