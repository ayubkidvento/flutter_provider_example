import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/fetch_detail_provider.dart';
import '../widgets/age_input_widget.dart';
import '../widgets/name_input_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_provider_example'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        children: [
          // const AgeInputWidget(),
          // const SizedBox(height: 12),
          const NameInputWidget(),
          const SizedBox(height: 12),
          Consumer<FetchDetailProvider>(
            builder: (context, value, child) {
              return Column(
                children: [
                  Text('AGE :- ${value.ageValue}'),
                  value.detail != null
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                alignment: Alignment.center,
                                child: value.detail!.avatarUrl != null
                                    ? CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            value.detail!.avatarUrl!),
                                      )
                                    : const Icon(Icons.person),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        '${value.detail!.login}${value.detail!.name != null ? '(${value.detail!.name})' : ''}'),
                                    if (value.detail!.bio != null)
                                      Text(value.detail!.bio.toString()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Text(value.loading
                          ? 'Loading...'
                          : value.error.toString()),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
