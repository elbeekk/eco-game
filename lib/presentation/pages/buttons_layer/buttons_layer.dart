import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/presentation/pages/buttons_layer/buttons/coin_button.dart';
import 'package:eco_game/presentation/pages/buttons_layer/buttons/menu_button.dart';
import 'package:eco_game/presentation/pages/buttons_layer/buttons/shop_button.dart';
import 'package:eco_game/presentation/pages/buttons_layer/veiws/coin_view.dart';
import 'package:eco_game/presentation/pages/buttons_layer/veiws/menu_view.dart';
import 'package:eco_game/presentation/pages/buttons_layer/veiws/shop_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsLayer extends StatefulWidget {
  const ButtonsLayer({super.key});

  @override
  State<ButtonsLayer> createState() => _ButtonsLayerState();
}

class _ButtonsLayerState extends State<ButtonsLayer> {
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
                    const MenuView(),
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
                                const MenuButton(),
                                const Spacer(),
                                BlocBuilder<GameBloc, GameState>(
                                  builder: (context, state) {
                                    bool isVisible = !state.moneyOpen;
                                    if (isVisible) {
                                      return const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CoinButton(),
                                        ],
                                      );
                                    }
                                    return const SizedBox.shrink();
                                  },
                                ),
                                const CoinView(),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [ShopButton()],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ShopView(),
            ],
          ),
        );
      },
    );
  }
}