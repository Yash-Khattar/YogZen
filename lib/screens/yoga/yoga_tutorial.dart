import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YogaTutorial extends StatefulWidget {
  const YogaTutorial(
      {super.key, required this.url, required this.steps, required this.des});
  final String url;
  final List steps;
  final String des;
  @override
  State<YogaTutorial> createState() => _YogaTutorialState();
}

class _YogaTutorialState extends State<YogaTutorial> {
  late YoutubePlayerController controller;
  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.url)!);
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: controller),
        builder: (context, player) {
          return Scaffold(
            backgroundColor: klightBlue,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // appbar
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            widget.des,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ],
                      ),

                      //video
                      const SizedBox(height: 10),
                      Text(
                        "Video",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      player,
                      // Container(
                      //   height: 200,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     color: kdarkBlue,
                      //     borderRadius: BorderRadius.circular(8),
                      //   ),
                      //   child: Center(child: Text("Video")),
                      // ),

                      //steps
                      const SizedBox(height: 20),
                      Text(
                        "Steps",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              leading: Text(
                                "${index + 1}",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              title: Text(
                                widget.steps[index],
                              ),
                            ),
                          );
                        },
                        itemCount: widget.steps.length,
                        shrinkWrap: true,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kdarkBlue,
                        ),
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Start",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
