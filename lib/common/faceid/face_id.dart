import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class FaceIDVideo extends StatefulWidget {
  const FaceIDVideo({super.key});

  @override
  State<FaceIDVideo> createState() => _FaceIDVideoState();
}

class _FaceIDVideoState extends State<FaceIDVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/face_id.mp4') 
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? SizedBox(
            width: 40,
            height: 30,
            child: VideoPlayer(_controller),
          )
        : SizedBox(
            width: 50,
            height: 20,
            child: Center(child: CircularProgressIndicator()),
          );
  }
}
