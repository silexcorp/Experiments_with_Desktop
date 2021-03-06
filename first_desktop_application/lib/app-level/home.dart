import 'package:first_desktop_application/app-level/widgets/bg_widget.dart';
import 'package:first_desktop_application/app-level/widgets/option_name.dart';
import 'package:first_desktop_application/routes/constants.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Begin...

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BgWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OptionButton(
                      buttonText: 'Theming',
                      onTap: () => Navigator.pushNamed(context, themingRoute),
                    ),
                    OptionButton(
                      buttonText: 'Solar System',
                      onTap: () =>
                          Navigator.pushNamed(context, solarSystemRoute),
                    ),
                    OptionButton(
                      buttonText: 'Flipping',
                      onTap: () => Navigator.pushNamed(context, flippingRoute),
                    ),
                    OptionButton(
                      buttonText: 'Inking',
                      onTap: () => Navigator.pushNamed(context, inkingRoute),
                    ),
                    OptionButton(
                      buttonText: 'LiquidCards',
                      onTap: () =>
                          Navigator.pushNamed(context, liquidCardsRoute),
                    ),
                    // OptionButton(
                    //   buttonText: 'TravelCards',
                    //   onTap: () =>
                    //       Navigator.pushNamed(context, travelCardsRoute),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
