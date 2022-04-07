class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'The world community grid.',
      image: 'assets/images/green1.jpeg',
      discription:
          "Green is the fresh emblem of well-founded hopes. In blue, the spirit can wander, but in green, it can rest. "),
  UnbordingContent(
      title: 'Radical eco activism.',
      image: 'assets/images/green2.jpg',
      discription:
          "Our green valleys will be greener once we fully grasp the infinite vitality of the green! "),
  UnbordingContent(
      title: 'Species relocation.',
      image: 'assets/images/green4.jpeg',
      discription:
          "Absolute green is the most restful color, lacking any undertone of joy, grief, or passion. On exhausted men, this restfulness has a beneficial effect, but after a time it becomes tedious. "),
];
