import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:eseksa/App.dart';
import 'package:eseksa/data/descriptions.dart';
import 'package:eseksa/utils/styles.dart';
import 'package:eseksa/widgets/BuildImage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => App()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: kTitleStyle,
      bodyTextStyle: kSubtitleStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xff304ffe),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: Description.title1,
          body: Description.body1,
          image: buildImage('onboarding1', 300.0, 300.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: Description.title2,
          body: Description.body2,
          image: buildImage('onboarding0', 300.0, 300.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: Description.title3,
          body: Description.body3,
          image: buildImage('onboarding2', 300.0, 300.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: Description.title4,
          body: Description.body4,
          image: buildImage('onboarding0', 300.0, 300.0),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: Description.title5,
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text("ចុះឈ្មោះឥឡូវនេះ ", style: kSubtitleStyle)],
          ),
          image: buildImage('onboarding1', 300.0, 300.0),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('រំលង',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      next: const Text('បន្ត',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      done: const Text('ចាប់ផ្តើម',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
