import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/name_provider.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: context.watch<NameProvider>().name,
      decoration: const InputDecoration(
        isDense: true,
        hintText: 'Enter github username...',
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
      ),
      onFieldSubmitted: (x) => context.read<NameProvider>().updateName(x),
    );
  }
}
