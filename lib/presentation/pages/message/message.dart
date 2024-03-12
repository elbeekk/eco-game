import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/game/game_bloc.dart';
import '../../../application/message/message_bloc.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  bool canSkip = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, gamestate) {
        return BlocBuilder<MessageBloc, MessageState>(
          builder: (context, state) {

            // context.read<MessageBloc>().add(MessageEvent.setIntroMessages(
            //     onError: (e) {}, onSuccess: () {}));
            final current = state.currentMessage;
            if (state.currentMessage?.id == '6' && !gamestate.shopOpen) {
              canSkip = false;
            }
            return Center(
              child: current != null
                  ? SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              constraints: const BoxConstraints(
                                  maxHeight: 250, maxWidth: 250),
                              height: MediaQuery.sizeOf(context).height * 0.6,
                              child: Image.asset(current.character ?? '')),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.brown.withOpacity(.8),
                                      width: 5),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    // bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                // constraints: BoxConstraints(
                                //     maxWidth: MediaQuery.sizeOf(context).width * 0.5),
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  current.text ?? '',
                                  style: GoogleFonts.vt323(
                                    fontSize: 25,
                                    height: 0.9,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  BlocBuilder<MessageBloc, MessageState>(
                                    builder: (context, state) {
                                      return AnimatedOpacity(
                                        opacity:
                                            state.currentMessage?.id != '5'
                                                ? 1
                                                : 0,
                                        duration:
                                            const Duration(seconds: 1),
                                        child: InkWell(
                                          onTap: (state
                                                      .currentMessage?.id !=
                                                  '5')
                                              ? () {
                                                  context
                                                      .read<MessageBloc>()
                                                      .add(
                                                        MessageEvent
                                                            .readMessage(
                                                          onError: (error) {
                                                            ScaffoldMessenger.of(
                                                                    context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                backgroundColor:
                                                                    Colors
                                                                        .red
                                                                        .shade300,
                                                                content:
                                                                    Text(
                                                                  error
                                                                      .toString(),
                                                                  style: const TextStyle(
                                                                      color:
                                                                          Colors.white),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          onSuccess: () {},
                                                        ),
                                                      );
                                                }
                                              : null,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.brown
                                                      .withOpacity(.8),
                                                  width: 3),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft:
                                                    Radius.circular(10),
                                                topRight:
                                                    Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            padding:
                                                const EdgeInsets.all(5),
                                            child: const Icon(
                                                Pixel.arrowright),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}
