import 'package:flutter/material.dart';

class MaterialBannerScreen extends StatefulWidget {
  const MaterialBannerScreen({super.key});

  @override
  State<MaterialBannerScreen> createState() => _MaterialBannerScreenState();
}

class _MaterialBannerScreenState extends State<MaterialBannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MaterialBanner"), centerTitle: true,),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                           leading: const Icon(Icons.notifications_active_outlined),
                           content: const Text("Subscribe!"),
                           padding: const EdgeInsets.all(20.0),
                           elevation: 5,
                           backgroundColor: Colors.white12,
                           actions: [
                                    TextButton(
                                            onPressed: () {
                                                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                                            },
                                            child: const Text("Dismiss")
                                    )
                                    ]
                      )
                  );
              },
              child: const Text("open"))),
    );
  }
}
