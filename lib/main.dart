import 'package:flutter/material.dart';
import 'package:just_chat/ui/page/home/home_page.dart';

void main(List<String> args) {
  runApp(const JustChatApp());
}

class JustChatApp extends StatelessWidget {
  const JustChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
