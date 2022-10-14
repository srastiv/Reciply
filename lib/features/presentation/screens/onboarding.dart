import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:reciply/features/presentation/constants/colors.dart';
import 'package:reciply/features/presentation/screens/homepage.dart';
import 'package:reciply/features/presentation/widgets/buttonWidget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            titleWidget: getTitle("Discover all the best recipes you needed"),
            bodyWidget: getBody(
                "5000+ healthy recipes made by peoplefor your healthy life"),
            image: buildImage("assets/Illustration.png"),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "yes",
            body: "yes",
            image: buildImage("assets/Illustration.png"),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "yes",
            body: "yes",
            image: buildImage("assets/Illustration.png"),
            decoration: getPageDecoration(),
          ),
        ],
        skip: const Text(
          "Skip",
          style: TextStyle(
            color: kCommonGreen,
          ),
        ),
        animationDuration: 300,
        done: const Text("Read"),
        onDone: () => gotoHomePage(context),
        globalFooter: ButtonWidget(text: "Next"),
        globalBackgroundColor: kCommonGreen,
        dotsDecorator: getDotsDecoration(),
        showSkipButton: true,
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward,
          color: kBlack,
        ),
      ),
    );
  }

  DotsDecorator getDotsDecoration() => const DotsDecorator(
        size: Size(8, 8),
        activeSize: Size(
          11,
          11,
        ),
        activeColor: kBlack,
        activeShape: CircleBorder(
          side: BorderSide(
            color: kBlack,
            width: 2,
          ),
        ),
      );

  void gotoHomePage(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Homescreen(),
      ),
    );
  }

  Widget getBody(String bodyText) {
    return Text(
      bodyText,
      style: TextStyle(color: kGrey),
    );
  }

  Widget getTitle(String titleText) {
    return Text(
      titleText,
      style: TextStyle(color: kBlack),
    );
  }

  Widget buildImage(String path) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Image.asset(path),
      ),
    );
  }

  getPageDecoration() => const PageDecoration(
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(
        fontSize: 30,
      ),
      pageColor: kWhite);
}
