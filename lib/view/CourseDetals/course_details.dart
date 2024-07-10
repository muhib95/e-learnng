import 'package:flutter/material.dart';
import 'package:second/utils/color.dart';
import 'package:second/wigets/custom_appbar.dart';
import 'package:second/wigets/custom_button.dart';
import 'package:second/wigets/playlist_wiget.dart';
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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    print(widget.courseDetails);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:
            customAppBar(context: context, title: widget.courseDetails['name']),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * .25,
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
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Center(child: Text('No video')),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(widget.courseDetails['name']),
              Row(
                children: [
                  Text('Ceated By'),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    'Muhibbul Hasan',
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text('4.8'),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(Icons.watch_later_outlined),
                      Text('72 hours')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$40',
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 4.0,
              ),
              TabBar(tabs: [
                Tab(text: 'Playlist (22)'),
                Tab(text: 'Description'),
              ]),
              SizedBox(
                width: 4.0,
              ),
              Expanded(
                child: TabBarView(
                    children: [
                      PlaylistWiget(),

                      // Center(child: Text('Play')),
                  Center(child: Text('Description')),
                ]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    CustomButton(buttonText: 'Enroll Now')
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
