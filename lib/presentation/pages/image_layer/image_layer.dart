import 'dart:developer';
import 'dart:io';

import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageLayer extends StatefulWidget {
  final List<Widget> children;

  const ImageLayer({super.key, required this.children});

  @override
  State<ImageLayer> createState() => _ImageLayerState();
}

class _ImageLayerState extends State<ImageLayer> {
 TransformationController transformationController =
      TransformationController();

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<GameBloc>().add(const GameEvent.closeAll());
          },
          child: InteractiveViewer(
            minScale: 0.8,
            scaleEnabled: false,
            onInteractionEnd: (details) {

              context.read<GameBloc>().add(
                    GameEvent.changeCurrentPos(
                      pos: Offset(
                        transformationController.value
                            .getColumn(3)
                            .gr
                            .y
                            .toDouble()
                            .abs(),
                        transformationController.value
                            .getColumn(3)
                            .gr
                            .x
                            .toDouble()
                            .abs(),
                      ),
                    ),
                  );
              log(Offset(
                transformationController.value
                    .getColumn(3)
                    .gr
                    .y
                    .toDouble()
                    .abs(),
                transformationController.value
                    .getColumn(3)
                    .gr
                    .x
                    .toDouble()
                    .abs(),
              ).toString());
            },
            transformationController: transformationController,
            maxScale: 1.4,
            constrained: false,
            child: Container(
              height: 2000,
              width: 2000,
              color: Colors.red,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/png/summer.png",
                    fit: BoxFit.cover,
                    scale: .1,
                  ),
                  ...widget.children
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
