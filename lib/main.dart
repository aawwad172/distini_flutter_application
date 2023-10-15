import 'package:distini_flutter_application/story_brain.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Destini());

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.fill),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory().getStoryTitle() ??
                        'Story doesn\'t exist',
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        storyBrain.getStory().getChoice1() ??
                            'Choice 1 doesn\'t exist',
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                    //Choice 1 made by user.
                      storyBrain.nextStory(1);
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  child: Visibility(
                    visible: storyBrain.buttonShouldBeVisible(),
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          storyBrain.getStory().getChoice2() ??
                              'Choice 2 doesn\'t exist',
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                    //Choice 2 made by user.
                      storyBrain.nextStory(2);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
