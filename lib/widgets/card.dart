import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Icon instagramicon = const Icon(
  FontAwesomeIcons.instagram,
  size: 20,
  color: Colors.pink,
);

Icon linkedIn = const Icon(
  FontAwesomeIcons.linkedin,
  size: 20,
  color: Colors.blue,
);

Icon github = Icon(
  FontAwesomeIcons.github,
  size: 20,
  color: Colors.grey[800],
);

class BrlCard extends StatelessWidget {
  const BrlCard({
    super.key,
    required this.img,
    required this.memberType,
    required this.domain,
    required this.name,
    required this.git,
    required this.linked,
    required this.ig,
  });
  final String name;
  final String img;
  final String memberType;
  final String domain;
  final String git;
  final String linked;
  final String ig;

  // @override
  // bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    final double width = MediaQuery.of(context).size.width;
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 650),
      tween: Tween<double>(begin: 1.0, end: 0),
      curve: const Interval(0.8, 1, curve: Curves.fastOutSlowIn),
      builder: (BuildContext context, double val, Widget? child) {
        return Transform(
          transform: Matrix4.translationValues(0, val * width, 0.0),
          child: child,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        height: MediaQuery.of(context).size.height * 0.38,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.deepPurple,
              blurRadius: 3.0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: CachedNetworkImage(
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  width: 200,
                  height: 200,
                  memCacheHeight: 200,
                  memCacheWidth: 200,
                  maxHeightDiskCache: 200,
                  maxWidthDiskCache: 200,
                  fit: BoxFit.cover,
                  imageUrl: img,
                  errorWidget: (context, url, error) =>
                      Image.asset('assets/images/usererror.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'sans',
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                memberType,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 11.7,
                  fontFamily: 'sans',
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                domain,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 11.7,
                  fontFamily: 'sans',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () async {
                      // String linked = linked;
                      if (await canLaunchUrlString(linked)) {
                        await launchUrlString(linked,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $linked';
                      }
                    },
                    child: linkedIn),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    onTap: () async {
                      // var git = git;
                      if (await canLaunchUrlString(git)) {
                        await launchUrlString(git,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $git';
                      }
                    },
                    child: github),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                    onTap: () async {
                      // var ig = ig;
                      if (await canLaunchUrlString(ig)) {
                        await launchUrlString(ig,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $ig';
                      }
                    },
                    child: instagramicon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
