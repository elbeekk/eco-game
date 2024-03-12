import 'package:eco_game/presentation/pages/buttons_layer/veiws/resource_view.dart';
import 'package:flutter/material.dart';

import '../../../../application/building/building_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResourceButton extends StatelessWidget {
  const ResourceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuildingBloc, BuildingState>(
      builder: (context, state) {
        context.read<BuildingBloc>().add(const BuildingEvent.getAll());
        return IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context1) {
                return ResourceView(
                  blocText: context,
                );
              },
            );
          },
          icon: const Icon(
            Icons.energy_savings_leaf_outlined,
            color: Colors.orange,
          ),
        );
      },
    );
  }
}
