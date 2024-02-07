import 'package:flutter/material.dart';
import 'package:just_chat/common/secret.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Call? call;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initStreamVideo();
    });
    super.initState();
  }

  void _initStreamVideo() async {
    final User guest = User.guest(userId: "testing", name: "Test User");

    final client = StreamVideo(
      streamVideoKey,
      user: guest,
      options: const StreamVideoOptions(
        logPriority: Priority.debug,
      ),
    );

    // Set up our call object
    call = client.makeCall(type: 'development', id: 'development_093b1292-5dde-4ce7-8074-f8681f28b5d3');
    // Connect to the call we created
    await call!.join();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: call == null
          ? const Text("Loading...")
          : StreamCallContainer(
              // Stream's pre-made component
              call: call!,
            ),
    );
  }
}
