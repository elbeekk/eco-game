import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/infrastructure/data/local_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixelarticons/pixel.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          height: state.shopOpen ? MediaQuery.sizeOf(context).height * 0.4 : 0,
          color: Colors.orange.withOpacity(.4),
          constraints: const BoxConstraints(maxHeight: 350),
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: LocalData.shopItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final current = LocalData.shopItems[index];
                    bool isGenerator = (current.energy??0)>0;
                    return Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                          border: Border.all(
                              color: Colors.orange.shade900.withOpacity(.5),
                              width: 3)),
                      child: Column(
                        children: [
                          if(state.shopOpen)Expanded(child: Image.asset(current.image ?? '')),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 5),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Row(
                          //         children: [
                          //           Icon(
                          //             Pixel.users,
                          //             color: Colors.blue.shade300,
                          //           ),
                          //           Text(
                          //             current.people.toString(),
                          //             style: GoogleFonts.vt323(
                          //                 color: Colors.blue, fontSize: 20),
                          //           ),
                          //         ],
                          //       ),
                          //       const SizedBox(
                          //         width: 5,
                          //       ),
                          //       Row(
                          //         children: [
                          //           Icon(
                          //             Pixel.batterycharging,
                          //             color: isGenerator
                          //                 ? Colors.green.shade300
                          //                 : Colors.red.shade300,
                          //           ),
                          //           Text(
                          //             "${isGenerator?"+":""}${current.energy} W/h",
                          //             style: GoogleFonts.vt323(
                          //                 color: isGenerator ? Colors.green:Colors.red, fontSize: 20),
                          //           ),
                          //         ],
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          if(state.shopOpen)Row(
                            children: [
                              Icon(
                                Pixel.coin,
                                color: Colors.orangeAccent.shade200,
                              ),
                              Text(
                                current.price.toString()??'',
                                style: GoogleFonts.vt323(
                                    color: Colors.orange, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      decoration:
                          const BoxDecoration(color: Colors.yellowAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
