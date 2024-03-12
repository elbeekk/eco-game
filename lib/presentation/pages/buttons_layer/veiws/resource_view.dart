import 'dart:developer';
import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResourceView extends StatelessWidget {
  final BuildContext blocText;

  const ResourceView({super.key, required this.blocText});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<BuildingBloc>(blocText),
      child: BlocBuilder<BuildingBloc, BuildingState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          double incomeAll = 0;
          double consumptionAll = 0;
          Map<String, double> incomeData = {};
          Map<String, double> consumptionData = {};
          for (var element in state.existingBuildings) {
            if ((element.energy ?? 0) >= 0) {
              incomeAll += element.energy?.abs().toDouble() ?? 0;
              incomeData.update(element.name ?? '',
                  (value) => value + (element.energy ?? 0).abs().toDouble(),
                  ifAbsent: () {
                return element.energy?.abs().toDouble() ?? 0;
              });
            } else {
              consumptionAll += element.energy?.abs().toDouble() ?? 0;
              consumptionData.update(element.name ?? '',
                  (value) => value + (element.energy ?? 0).abs().toDouble(),
                  ifAbsent: () {
                log((element.energy?.abs().toDouble() ?? 0).toString());
                return element.energy?.abs().toDouble() ?? 0;
              });
            }
          }
          // log("income => $incomeData");
          // log("consumption => $consumptionData");
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            scrollable: true,
            contentPadding: EdgeInsets.all(4),
            title: Center(
                child: Shimmer.fromColors(
                    baseColor: Colors.green,
                    highlightColor: Colors.red,
                    child: const Text(
                      "Recource Managment",
                    ))),
            content: Container(
              height: MediaQuery.sizeOf(context).height * 0.8 > 500
                  ? MediaQuery.sizeOf(context).height * 0.3
                  : MediaQuery.sizeOf(context).height * 0.6,
              width: MediaQuery.sizeOf(context).width * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (incomeData.isNotEmpty)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Income +${incomeAll.toInt()}',
                                style: TextStyle(
                                    color: Colors.green.shade300,
                                    fontSize: 17,
                                    letterSpacing: 1.1),
                              ),
                              PieChart(
                                colorList: [
                                  Colors.green.shade300,
                                  Colors.green.shade500,
                                  Colors.green.shade700,
                                  Colors.green.shade900,
                                  Colors.blue.shade300,
                                  Colors.blue.shade500,
                                  Colors.blue.shade700,
                                  Colors.blue.shade900,
                                ],
                                chartRadius: MediaQuery.sizeOf(context).height *
                                            0.3 >
                                        200
                                    ? 200
                                    : MediaQuery.sizeOf(context).height * 0.25,
                                dataMap: incomeData,
                                chartType: ChartType.disc,
                                legendOptions: const LegendOptions(
                                  legendPosition: LegendPosition.bottom,
                                ),
                              ),
                            ],
                          ),
                        if (incomeData.isEmpty && consumptionData.isEmpty)
                          SizedBox(
                            width: 300,
                            child: Text(
                              "Build more buildings to monitor energy usage.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black.withOpacity(.8)),
                            ),
                          ),
                        if (incomeData.isNotEmpty && consumptionData.isNotEmpty)
                          SizedBox(
                            height:
                                MediaQuery.sizeOf(context).height * 0.8 > 500
                                    ? 500
                                    : MediaQuery.sizeOf(context).height * 0.8,
                            child: Shimmer.fromColors(
                              baseColor: Colors.green,
                              direction: ShimmerDirection.ttb,
                              highlightColor: Colors.red,
                              child: const VerticalDivider(
                                indent: 50,
                                endIndent: 50,
                              ),
                            ),
                          ),
                        if (consumptionData.isNotEmpty)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Consumption -${consumptionAll.toInt()}',
                                style: TextStyle(
                                    color: Colors.red.shade300,
                                    fontSize: 17,
                                    letterSpacing: 1.1),
                              ),
                              PieChart(
                                colorList: [
                                  Colors.red.shade300,
                                  Colors.red.shade500,
                                  Colors.red.shade700,
                                  Colors.red.shade900,
                                  Colors.purple.shade300,
                                  Colors.purple.shade500,
                                  Colors.purple.shade700,
                                  Colors.purple.shade900,
                                ],
                                chartRadius: MediaQuery.sizeOf(context).height *
                                            0.3 >
                                        200
                                    ? 200
                                    : MediaQuery.sizeOf(context).height * 0.25,
                                dataMap: consumptionData,
                                chartType: ChartType.disc,
                                legendOptions: const LegendOptions(
                                  legendPosition: LegendPosition.bottom,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
