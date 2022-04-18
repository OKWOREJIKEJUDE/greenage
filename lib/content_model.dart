class UnbordingContent {
  String image;
  String title;
  String little_discription;

  UnbordingContent(
      {required this.image, required this.title, required this.little_discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'The world community grid.',
      image: 'assets/images/green1.jpeg',
      little_discription:
          "Green is the fresh . "),
  UnbordingContent(
      title: 'Radical eco activism.',
      image: 'assets/images/green2.jpg',
      little_discription:
          "Our green valleys "),
  UnbordingContent(
      title: 'Species relocation.',
      image: 'assets/images/green4.jpeg',
      little_discription:
          "Absolute green"),
];
