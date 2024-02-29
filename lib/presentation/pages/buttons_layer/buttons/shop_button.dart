import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ShopButton extends StatelessWidget {
  const ShopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return TweenAnimationBuilder(
          tween: IntTween(
              begin: state.shopOpen ? 70 : 0, end: state.shopOpen ? 0 : 70),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return IconButton(
              onPressed: () {
                context.read<GameBloc>().add(const GameEvent.showShop());
              },
              icon: Icon(

                Ionicons.ios_construct,
                color: Colors.white,
                size: value.toDouble(),
              ),
            );
          },
        );
      },
    );
  }
}
