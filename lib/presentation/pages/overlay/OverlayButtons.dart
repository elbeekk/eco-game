import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lottie/lottie.dart';

class OverlayButtons extends StatelessWidget {
  const OverlayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.orange,
                    )),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset(
                              'assets/images/png/eco.png',
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 20,
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(.6),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset(
                              'assets/images/png/energy.png',
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 20,
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: const Color(0xfff1d212).withOpacity(.9),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.build_circle_outlined,
                        color: Colors.white,
                        size: 70,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
