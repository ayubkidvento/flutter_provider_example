import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/number_provider.dart';

class AgeInputWidget extends StatelessWidget {
  const AgeInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<NumberProvider>();
    return TextFormField(
      initialValue: provider.age != null ? provider.age.toString() : '',
      decoration: const InputDecoration(
        isDense: true,
        hintText: 'Type Age...',
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
      ),
      onFieldSubmitted: (x) =>
          context.read<NumberProvider>().changeAge(int.parse(x)),
    );
  }
}
