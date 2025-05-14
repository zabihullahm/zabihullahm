import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/favorite_provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    print("aaa");
    return Scaffold(
      body: Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Consumer<FavoriteProvider>(
              builder: (context, value, child) {
                return ListTile(
                  onTap: () {
                    value.additem(index);
                  },
                  title: Text("Index $index"),
                  trailing: Icon(
                    value.selected.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_outline,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
