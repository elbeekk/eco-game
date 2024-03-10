import 'package:eco_game/presentation/pages/buttons_layer/veiws/resource_view.dart';
import 'package:flutter/material.dart';

class ResourceButton extends StatelessWidget {
  const ResourceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(context: context, builder: (context) {
          return const ResourceView();
        },);
      },
      icon: const Icon(
        Icons.energy_savings_leaf_outlined,
        color: Colors.orange,
      ),
    );
  }
}
