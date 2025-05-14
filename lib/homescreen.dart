import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/provider_class.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    final pro = Provider.of<ProviderClass>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      pro.incr();
    });
  }

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ProviderClass>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Consumer<ProviderClass>(
          builder: (context, value, child) => Text(
            value.count.toString(),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pro.incr();
        },
      ),
    );
  }
}
