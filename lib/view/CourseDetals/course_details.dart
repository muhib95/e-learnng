import 'package:flutter/material.dart';
import 'package:second/utils/color.dart';
import 'package:second/wigets/custom_appbar.dart';
import 'package:video_player/video_player.dart';

class CourseDetails extends StatefulWidget {
  final dynamic courseDetails;

  const CourseDetails({super.key, required this.courseDetails});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    print(widget.courseDetails);
    return Scaffold(
        appBar: customAppBar(
            context: context, title: widget.courseDetails['name']
        ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: size.height*.25,
              decoration: BoxDecoration(
                color: AppColor.backgroundColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    blurRadius: 8,
                    spreadRadius: .5,
                  )
                ],
              ),
              child: _controller.value.isInitialized? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
              :
              Center(child: Text('No video'))
              ,
            ),
          ],
        ),
      ),
          floatingActionButton: FloatingActionButton(
    onPressed: () {
    setState(() {
    _controller.value.isPlaying
    ? _controller.pause()
        : _controller.play();
    });
    },

          ));

  }
}
