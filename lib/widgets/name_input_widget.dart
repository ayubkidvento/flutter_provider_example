import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/name_provider.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var watch = context.watch<NameProvider>();
    var provider = context.read<NameProvider>();
    return Column(
      children: [
        TextFormField(
          initialValue: watch.name,
          decoration: const InputDecoration(
            isDense: true,
            hintText: 'Enter github username...',
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          ),
          onFieldSubmitted: (x) => provider.updateName(x),
        ),
        const SizedBox(height: 12),
        TextFormField(
          initialValue: watch.address,
          decoration: const InputDecoration(
            isDense: true,
            hintText: 'Enter address...',
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          ),
          onFieldSubmitted: (x) => provider.updateAddress(x),
        ),
      ],
    );
  }
}
