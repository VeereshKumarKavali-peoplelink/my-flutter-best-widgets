import 'package:flutter/material.dart';

class PreferredSizeScreen extends StatefulWidget {
  const PreferredSizeScreen({super.key});

  @override
  State<PreferredSizeScreen> createState() => _PreferredSizeScreenState();
}

class _PreferredSizeScreenState extends State<PreferredSizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.redAccent, Colors.orangeAccent])),
          child: SafeArea(
            child: Center(child: ListTile(title: const Text("PreferredSize"), textColor: Colors.white  ,trailing: IconButton(onPressed: (){},color: Colors.white, icon: const Icon(Icons.search, size: 20,)),))
          ),
        ),
      ),
    );
  }
}
