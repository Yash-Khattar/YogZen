import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class YogaTutorial extends StatefulWidget {
  const YogaTutorial({super.key});

  @override
  State<YogaTutorial> createState() => _YogaTutorialState();
}

class _YogaTutorialState extends State<YogaTutorial> {
  List steps = [
    "Step 1",
    "Step 2",
    "Step 3",
    "Step 4",
    "Step 5",
    "Step 6",
    "Step 7",
    "Step 8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightBlue,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                        Text("Yoga Name",
                            style: Theme.of(context).textTheme.headlineLarge),
                      ],
                    ),

                    //video
                    SizedBox(height: 10),
                    Text(
                      "Video",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kdarkBlue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text("Video")),
                    ),

                    //steps
                    SizedBox(height: 20),
                    Text(
                      "Steps",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 10),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: ListTile(
                            leading: Text(
                              steps[index],
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            title: Text(
                              "Step Description",
                            ),
                          ),
                        );
                      },
                      itemCount: steps.length,
                      shrinkWrap: true,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 16,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kdarkBlue,
                ),
                height: 50,
                child: Center(
                  child: Text(
                    "Start",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
