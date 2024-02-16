import 'package:cached_network_image/cached_network_image.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flame/game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          height: MediaQuery.sizeOf(context).height,
          color: Colors.orange.withOpacity(.4),
          constraints: const BoxConstraints(maxWidth: 300),
          width: state.menuOpen ? MediaQuery.sizeOf(context).width * 0.25 : 0,
          child: state.menuOpen
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /// Google profile info
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              width: MediaQuery.sizeOf(context).height * 0.1,
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
                            const SizedBox(
                              width: 7,
                            ),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Elbek Mirzamakhmudov",
                                    style: TextStyle(fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'elbekmirzamakhmudov@gmail.com',
                                    style: TextStyle(fontSize: 13),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// Exit button
                    GestureDetector(
                        onTap: () {
                          // exit(0);
                          SystemChannels.platform
                              .invokeMethod('SystemNavigator.pop');
                        },
                        child: const Text("Exit")),
                  ],
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
