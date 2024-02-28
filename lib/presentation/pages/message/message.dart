import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/message/message_bloc.dart';

class Message extends StatefulWidget {
  final String image;
  final String message;

  const Message({super.key, required this.image, required this.message});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  bool canSkip = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxHeight: 400),
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.fitHeight)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.brown.withOpacity(.8), width: 5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          // bottomLeft: Radius.circular(10),
                        ),
                      ),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width * 0.6),
                      padding: const EdgeInsets.all(10),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        onFinished: () {
                          setState(() {
                            canSkip = true;
                          });
                        },
                        animatedTexts: [
                          TypewriterAnimatedText(
                            widget.message,
                            textStyle:
                                GoogleFonts.vt323(fontSize: 25, height: .9),
                            speed: Duration(
                                milliseconds: widget.message.length ~/ 4.5),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 2,
                  ),
                  BlocBuilder<MessageBloc, MessageState>(
                    builder: (context, state) {
                      return AnimatedOpacity(
                        opacity: canSkip ? 1 : 0,
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                          onTap: canSkip?() {
                            context.read<MessageBloc>().add(
                                  MessageEvent.readMessage(
                                    onError: (error) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          backgroundColor: Colors.red.shade300,
                                          content: Text(
                                            error.toString(),
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      );
                                    },
                                    onSuccess: () {},
                                  ),
                                );
                          }:null,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.brown.withOpacity(.8),
                                  width: 3),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Row(
                              children: [Icon(Pixel.arrowright)],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
