class OnboardingContent {
  String image;
  String title;
  String discription;

  OnboardingContent(
      {required this.image, required this.title, required this.discription});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Discover all the best recipes you needed',
      image: 'images/quality.svg',
      discription:
          "5000+ healthy recipes made by people for your healthy life"),
  OnboardingContent(
      title: 'Fast Delivery',
      image: 'images/delivery.svg',
      discription:
          "simply dummy text of the printing and typesetting industry."),
  OnboardingContent(
      title: 'Reward surprises',
      image: 'images/reward.svg',
      discription:
          "simply dummy text of the printing and typesetting industry."),
];
