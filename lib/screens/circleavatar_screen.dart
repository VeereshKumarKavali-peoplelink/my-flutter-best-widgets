import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatefulWidget {
  const CircleAvatarScreen({super.key});

  @override
  State<CircleAvatarScreen> createState() => _CircleAvatarScreenState();
}

class _CircleAvatarScreenState extends State<CircleAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        
      ),
    );
  }
}