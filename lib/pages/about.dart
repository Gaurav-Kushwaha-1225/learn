import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn/utils/constants.dart';
import 'package:learn/utils/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Learning app for kids',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: ConstantDimensions.sizedBoxHeightSmall_Medium),
            const Text(
              'Version: 1.1.0',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: ConstantDimensions.sizedBoxHeightSmall_Medium / 2),
            const Text(
              'Developed by: sapatevaibhav',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: ConstantDimensions.sizedBoxHeightSmall_Medium),
            const Text(
              'Description:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: ConstantDimensions.sizedBoxHeightSmall_Medium / 2),
            const Text(
              AppConstants.description,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: ConstantDimensions.sizedBoxHeightExtraSmall),
            const Text(
              'Source code:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchURL(context, "https://github.com/VaibhavCodeClub/learn");
              },
              child: SvgPicture.asset(
                'assets/images/git.svg',
                width: 32.0,
                height: 32.0,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            const SizedBox(height: ConstantDimensions.sizedBoxHeightSmall_Medium),
            const Text(
              'Connect:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _launchURL(context, "https://github.com/sapatevaibhav");
                  },
                  child: SvgPicture.asset(
                    'assets/images/github.svg',
                    width: 32.0,
                    height: 32.0,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                const SizedBox(width: ConstantDimensions.sizedBoxWidthSmall_Medium),
                GestureDetector(
                  onTap: () {
                    _launchURL(context, "mailto:sapatevaibhav@duck.com");
                  },
                  child: SvgPicture.asset(
                    'assets/images/email.svg',
                    width: 32.0,
                    height: 32.0,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black ,
                  ),
                ),
                const SizedBox(width: ConstantDimensions.sizedBoxWidthSmall_Medium),
                GestureDetector(
                  onTap: () {
                    _launchURL(
                        context, "https://linkedin.com/in/sapatevaibhav");
                  },
                  child: SvgPicture.asset(
                    'assets/images/linkedin.svg',
                    width: 32.0,
                    height: 32.0,
                  ),
                ),
                const SizedBox(width: ConstantDimensions.sizedBoxWidthSmall_Medium),
                GestureDetector(
                  onTap: () {
                    _launchURL(context, "https://instagram.com/v.d.r.sapate");
                  },
                  child: SvgPicture.asset(
                    'assets/images/instagram.svg',
                    width: 32.0,
                    height: 32.0,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(BuildContext context, String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      throw 'Could not launch $url';
    }
  }
}
