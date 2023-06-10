import 'package:flutter/material.dart';

class CheckboxListTileScreen extends StatefulWidget {
  const CheckboxListTileScreen({super.key});

  @override
  State<CheckboxListTileScreen> createState() => _CheckboxListTileScreenState();
}

class _CheckboxListTileScreenState extends State<CheckboxListTileScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkbox List Tile"), centerTitle: true,),
      body: Center(
          child: CheckboxListTile(
              title: const Text("Checkbox List Tile"),
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
              activeColor: Colors.orangeAccent,
              checkColor: Colors.white,
              tileColor: Colors.black12,
              subtitle: const Text("This is a subtitle"),
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
              )),
    );
  }
}
