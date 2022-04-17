import 'package:flutter/material.dart';
import 'package:foda/components/amaoba_paint.dart';
import 'package:foda/components/app_scaffold.dart';
import 'package:foda/components/foda_button.dart';
import 'package:foda/components/oval_paint.dart';
import 'package:foda/constant/image_path.dart';
import 'package:foda/themes/app_theme.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const OvalPaint(),
            const AmaobaPaint(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.discuss,
                    height: 400,
                  ),
                  const SizedBox(height: AppTheme.cardPadding),
                  Image.asset(ImagePath.logo),
                  const SizedBox(height: AppTheme.cardPadding),
                  SizedBox(
                    width: AppTheme.size(context).width * 0.6,
                    child: Column(
                      children: [
                        Text(
                          "Welcome\nto Food Delivery",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2?.copyWith(color: AppTheme.orange, height: 1),
                        ),
                        const SizedBox(height: AppTheme.cardPadding),
                        FodaButton(title: "Sign In", onTap: () {}),
                        const SizedBox(height: AppTheme.elementSpacing),
                        FodaButton(
                          title: "Sign Up",
                          gradiant: const [AppTheme.darkBlue],
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}