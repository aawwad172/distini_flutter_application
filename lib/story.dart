class Story {
  String? _storyTitle;
  String? _choice1;
  String? _choice2;

  // Constructor
  Story({String? storyTitle, String? choice1, String? choice2}) {
    setStoryTitle(storyTitle);
    setChoice1(choice1);
    setChoice2(choice2);
  }

  // Setters
  void setStoryTitle(String? storyTitle) {
    _storyTitle = storyTitle;
  }

  void setChoice1(String? choice1) {
    _choice1 = choice1;
  }

  void setChoice2(String? choice2) {
    _choice2 = choice2;
  }

  String? getStoryTitle() {
    return _storyTitle;
  }

  String? getChoice1() {
    return _choice1;
  }

  String? getChoice2() {
    return _choice2;
  }
}
