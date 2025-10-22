import 'package:flutter/material.dart';
import 'package:uber_eat/features/explore/presentation/models/reels.dart';
import 'package:video_player/video_player.dart';


class ReelItems extends StatelessWidget {
  
  const ReelItems({super.key, required this.controller, required this.reels});

  final VideoPlayerController controller;
  final ReelsModel reels;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
            Positioned.fill(
          child: AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: controller.value.isInitialized
                ? VideoPlayer(controller)
                : Center(child: CircularProgressIndicator()),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,

          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black, // Starting color
                  Colors.black.withValues(
                    alpha: 0.0,
                  ), // Transparent at the bottom
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,

          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black.withValues(alpha: 0.0), Colors.black],
              ),
            ),
          ),
        ),

   
        Positioned(
          right: 0,
          bottom: 16,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(height: 4),

                    Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(height: 36),
                Column(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(height: 4),

                    Text(
                      'Favorite',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(height: 36),
                Column(
                  children: [
                    Icon(
                      Icons.file_upload_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(height: 4),

                    Text(
                      'Share',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        Positioned(
          left: 0,
          bottom: 16,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 reels.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                   reels.desp,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 20 / 14,
                    ),
                  ),
                ),
                SizedBox(height: 4),

                Text(
                 reels.price,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                     reels.brandname,
                      style: TextStyle(
                        color: Colors.yellow[800],
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '52-62 min',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14,
                      ),
                    ),
                    SizedBox(width: 4),
                    Row(
                      children: [
                        ...List.generate(5, (index) => index).map(
                          (x) =>
                              Icon(Icons.star, color: Colors.white, size: 12),
                        ),
                        SizedBox(width: 2),
                        Text(
                          '(125)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            height: 20 / 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
