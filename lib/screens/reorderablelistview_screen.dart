import 'package:flutter/material.dart';

class ReorderableListViewScreen extends StatefulWidget {
  const ReorderableListViewScreen({super.key});

  @override
  State<ReorderableListViewScreen> createState() => _ReorderableListViewScreenState();
}

class _ReorderableListViewScreenState extends State<ReorderableListViewScreen> {
  final List<int> items = List<int>.generate(30, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reorderable List View"),),
      body: ReorderableListView(onReorder: (int oldIndex, int newIndex){
        setState(() {
          if (oldIndex < newIndex){
            newIndex -= 1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      } , children: List.generate(items.length , (index) => ListTile(
        key: Key('$items'),
        tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
        title: Text("Item ${items[index]}"),
        trailing: const Icon(Icons.drag_handle_sharp),
      )
      ),
      
      ),
    );
  }
}