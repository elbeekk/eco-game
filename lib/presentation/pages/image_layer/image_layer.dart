import 'dart:developer';
import 'dart:io';

import 'package:eco_game/application/game/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageLayer extends StatefulWidget {
  final List<Positioned> children;

  const ImageLayer({super.key, required this.children});

  @override
  State<ImageLayer> createState() => _ImageLayerState();
}

class _ImageLayerState extends State<ImageLayer> {
  double width = 3000;
  double height = 2500;

  @override
  void initState() {
    getImageSize();
    super.initState();
  }

  getImageSize() async {
    File image = File("assets/images/png/summer.png");
    var decodedImage = await decodeImageFromList(image.readAsBytesSync());
    log("image_width ${decodedImage.width}");
    log("image_height ${decodedImage.height}");
    setState(() {
      height = decodedImage.height.toDouble();
      width = decodedImage.width.toDouble();
    });
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
            constrained: false,
            child: Container(
              height: height,
              width: width,
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
