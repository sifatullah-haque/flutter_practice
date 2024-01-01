import 'package:flutter/material.dart';
import 'package:practice/states/stateManager.dart';
import 'package:provider/provider.dart';

import 'components/container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StateManager>(
        builder: (context, value, child) => Scaffold(
            appBar: AppBar(
              title: const Text("provider practice"),
              centerTitle: true,
            ),
            body: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContainerBox(
                          icons: Icons.add,
                          number: value.count.toString(),
                          onPressed: () {
                            final state = context.read<StateManager>();
                            state.increase();
                          },
                        ),
                        ContainerBox(
                          icons: Icons.minimize,
                          number: value.bigText.toString(),
                          onPressed: () {
                            final state = context.read<StateManager>();
                            state.decrease();
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                  ],
                ))));
  }
}
