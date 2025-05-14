import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/exampleprovider.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Exampleprovider>(
            builder: (context, value, child) {
              return Center(
                child: Slider(
                  value: value.value,
                  onChanged: (val) {
                    value.setval(val);
                  },
                ),
              );
            },
          ),
          Consumer<Exampleprovider>(
            builder: (context, value, child) {
              return Container(
                height: 100,
                color: Colors.amber.withValues(alpha: value.value),
              );
            },
          )
        ],
      ),
    );
  }
}
