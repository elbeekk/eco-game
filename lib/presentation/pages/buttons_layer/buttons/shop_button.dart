import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../application/message/message_bloc.dart';

class ShopButton extends StatelessWidget {
  const ShopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, mesState) {
        return BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return TweenAnimationBuilder(
              tween: IntTween(
                  begin: state.shopOpen ? 6 : 600,
                  end: state.shopOpen ? 600 : 6),
              duration: const Duration(milliseconds: 200),
              builder: (context, value, child) {
                return GestureDetector(
                  onTap: () {
                    if (mesState.currentMessage?.id == '5') {
                      context.read<MessageBloc>().add(MessageEvent.readMessage(
                          onError: (e) {}, onSuccess: () {}));
                    }
                    context.read<GameBloc>().add(const GameEvent.showShop());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                    child: Image.asset(
                      "assets/images/png/store.png",
                      scale: value.toDouble(),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
