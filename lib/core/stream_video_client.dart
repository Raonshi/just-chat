import 'package:just_chat/common/secret.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class JcStreamVideoClient {
  void _init() {
    StreamVideo(
      streamVideoKey,
      user: User.regular(userId: "testing", name: "Test User"),
      userToken: "YOUR-USER-TOKEN",
      options: const StreamVideoOptions(
        logPriority: Priority.debug,
      ),
    );
  }
}
