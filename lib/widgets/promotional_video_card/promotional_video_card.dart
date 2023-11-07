import 'package:flutter/material.dart';
import 'package:otithee_com_clone/widgets/promotional_video_card/yt_video_player.dart';

class PromotionalVideoCard extends StatelessWidget {
  final String videoID;

  const PromotionalVideoCard({Key? key, required this.videoID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace the Image widget with a YouTubePlayer
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: YTVideoPlayer(videoId: videoID)),
          ),
        ],
      ),
    );
  }
}
