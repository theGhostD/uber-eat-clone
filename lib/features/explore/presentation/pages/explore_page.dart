import 'package:flutter/material.dart';
import 'package:uber_eat/features/explore/presentation/widgets/reel_items.dart';
import 'package:uber_eat/mocks/index.dart';
import 'package:video_player/video_player.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final PageController? controller = PageController();

  late List<VideoPlayerController> _videoController = [];

  bool isVideoUrlnitialise = false;
  String? _isError;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    fetchVideo();
  }

  void fetchVideo() async {
    _videoController = videoUrls.map((x) {
      return VideoPlayerController.networkUrl(Uri.parse(x.videoUrl));
    }).toList();

    try {
      for (int i = 0; i < _videoController.length; i++) {
        if (i < 2) {
          await _videoController[i].initialize();
        }

        _videoController[i].setLooping(true);
        // _videoController[i].setVolume(0.0);
      }
      setState(() {
        isVideoUrlnitialise = true;
      });
      _videoController[0].play();
    } catch (e) {
      setState(() {
        _isError = e.toString();
      });
    }
  }

  List<bool> check() => _videoController
      .map((controller) => controller.value.isInitialized)
      .toList();

  void onPageChange(int pageIndex) async {
    await _videoController[_currentIndex].pause();
    await _videoController[pageIndex].play();

    for (int i = 0; i < _currentIndex; i++) {
      if (_currentIndex - i >= 3) {
        // Dispose old video controllers
        await _videoController[i].dispose();
      }
    }

    int maxIndexToInit = (_currentIndex + 2).clamp(
      0,
      _videoController.length - 1,
    );
    for (int i = _currentIndex + 1; i <= maxIndexToInit; i++) {
      if (!_videoController[i].value.isInitialized) {
        await _videoController[i].initialize();
      }
    }

    setState(() {
      _currentIndex = pageIndex;
    });
  }

  @override
  void dispose() {
    _videoController[_currentIndex].pause();
    for (VideoPlayerController controller in _videoController) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('_checking : ${check()}');

    print('_currentIndex : $_currentIndex');

    return Scaffold(
      body: _isError != null
          ? Center(child: Text(_isError!))
          : !isVideoUrlnitialise
          ? Center(child: CircularProgressIndicator())
          : PageView.builder(
              controller: controller,
              scrollDirection: Axis.vertical,
              itemCount: _videoController.length,

              onPageChanged: onPageChange,
              itemBuilder: (ctx, index) {
                return ReelItems(
                  controller: _videoController[index],
                  reels: videoUrls[index],
                );
              },
            ),
    );
  }
}
