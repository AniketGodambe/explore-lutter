// ignore_for_file: unnecessary_null_comparison

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final VideoPlayerController videoPlayercontroller;

  const Video({
    Key? key,
    required this.videoPlayercontroller,
  }) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late ChewieController _chewieController;
  @override
  void initState() {
    _chewieController = ChewieController(
        showControlsOnInitialize: false,
        videoPlayerController: widget.videoPlayercontroller,
        aspectRatio: 16 / 16,
        allowFullScreen: true,
        materialProgressColors:
            ChewieProgressColors(bufferedColor: Colors.white),
        showControls: true,
        fullScreenByDefault: false,
        customControls: const CupertinoControls(
          backgroundColor: Colors.black,
          iconColor: Colors.white,
        ));
    super.initState();
  }

  @override
  void dispose() {
    widget.videoPlayercontroller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.videoPlayercontroller.initialize() != null
        ? Chewie(
            controller: _chewieController,
          )
        : const Center(
            child: CircularProgressIndicator(
            backgroundColor: Colors.grey,
          ));
  }
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Video(
        videoPlayercontroller: VideoPlayerController.asset("vdo.mp4"),
      ),
    );
  }
}
