import 'package:flutter/material.dart';
import 'package:gooboba_mobile/screens/auth/email.dart';
import 'package:gooboba_mobile/screens/discover/index.dart';
import 'package:gooboba_mobile/screens/onboarding/default-slide.dart';
import 'package:gooboba_mobile/theme/style.dart';
import 'package:gooboba_mobile/widgets/onboarding.dart';

class OnboardingIndex extends StatelessWidget {
  static final String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return OnboardingLayout(
      onGetStarted: () {
        Navigator.of(context).pushReplacementNamed(AuthEmail.routeName);
      },
      onSkip: () {
        print("Skipping");
      },
      slides: <Widget>[
        DefaultOnboardingSlide(
          image: Image.asset('assets/images/slide-1.png'),
          header: Text(
            "Rent beautiful cars",
            style: whiteHeader2TextStyle,
          ),
          description: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Center(
              child: Row(children: [
                Expanded(
                  child: Text(
                    "The largest online platform to rent cars from locals",
                    textAlign: TextAlign.center,
                    style: paragraphTextStyle.copyWith(color: Colors.white),
                  ),
                )
              ]),
            ),
          ),
        ),
        DefaultOnboardingSlide(
          image: Image.asset('assets/images/slide-2.png'),
          header: Text(
            "Move around with ease",
            style: whiteHeader2TextStyle,
          ),
          description: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Center(
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Pick up, get a car delivered to you, drive or be driven. You have options!",
                    textAlign: TextAlign.center,
                    style: paragraphTextStyle.copyWith(color: Colors.white),
                  ),
                )
              ]),
            ),
          ),
        ),
        DefaultOnboardingSlide(
          image: Image.asset('assets/images/slide-3.png'),
          header: Text(
            "Earn money",
            style: whiteHeader2TextStyle,
          ),
          description: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Center(
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Earn up to NGN200,000 monthly by listing your vehicle.",
                    textAlign: TextAlign.center,
                    style: paragraphTextStyle.copyWith(color: Colors.white),
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
