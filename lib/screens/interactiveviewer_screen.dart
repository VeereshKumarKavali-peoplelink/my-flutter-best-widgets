import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatefulWidget {
  const InteractiveViewerScreen({super.key});

  @override
  State<InteractiveViewerScreen> createState() => _InteractiveViewerScreenState();
}

class _InteractiveViewerScreenState extends State<InteractiveViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(double.infinity),
          child: Scaffold(
            appBar: AppBar(title: const Text("InteractiveViewer"),),

          )
      )
    );
  }
}