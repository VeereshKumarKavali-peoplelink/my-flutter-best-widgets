import 'package:flutter/material.dart';
import 'package:my_flutter_best_widgets/screens/LongPressDraggable_screen.dart';
import 'package:my_flutter_best_widgets/screens/bottomsheet_screen.dart';
import 'package:my_flutter_best_widgets/screens/checkboxlisttile_screen.dart';
import 'package:my_flutter_best_widgets/screens/circleavatar_screen.dart';
import 'package:my_flutter_best_widgets/screens/interactiveviewer_screen.dart';
import 'package:my_flutter_best_widgets/screens/materialbanner_screen.dart';
import 'package:my_flutter_best_widgets/screens/preferredsize_screen.dart';
import 'package:my_flutter_best_widgets/screens/reorderablelistview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      //home: const MaterialBannerScreen()
      //home: const PreferredSizeScreen()
      //home: const BottomSheetScreen()
      //home: const LongPressDraggableScreen()
      //home: const InteractiveViewerScreen()
      //home: const ReorderableListViewScreen()
      //home: const CheckboxListTileScreen()
      home: const CircleAvatarScreen()

    );
  }
}
