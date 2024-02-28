import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:eco_game/application/game/game_bloc.dart';
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

  moveTo(double dx, double dy) {
    transformationController.value = Matrix4.identity()..translate(-dx, -dy);
    // (Matrix4.translationValues(-dx, -dy, 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        moveTo(state.currentPos.dx, state.currentPos.dy);
        return GestureDetector(
          onTap: () {
            context.read<GameBloc>().add(const GameEvent.closeAll());
          },
          child: InteractiveViewer(
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
              // log(Offset(
              //   transformationController.value
              //       .getColumn(3)
              //       .gr
              //       .y
              //       .toDouble()
              //       .abs(),
              //   transformationController.value
              //       .getColumn(3)
              //       .gr
              //       .x
              //       .toDouble()
              //       .abs(),
              // ).toString());
            },
            trackpadScrollCausesScale: true,
            transformationController: transformationController,
            constrained: false,
            child: Container(
              height: 1500,
              width: 2000,
              color: const Color(0xffC0D470),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/map.png",
                    fit: BoxFit.cover,
                  ),
                  ...widget.children,
                  // Positioned(
                  //   top: 0,
                  //   bottom: 1350,
                  //   left: 0,
                  //   right: 0,
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           color: Colors.red.withOpacity(.4),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 1410,
                  //   bottom: 0,
                  //   left: 0,
                  //   right: 0,
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           color: Colors.red.withOpacity(.4),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 0,
                  //   bottom: 0,
                  //   left: 1880,
                  //   right: 0,
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           color: Colors.red.withOpacity(.4),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 150,
                  //   bottom: 0,
                  //   left: 0,
                  //   right: 1750,
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           color: Colors.red.withOpacity(.4),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
