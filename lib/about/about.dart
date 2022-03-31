import 'package:best_flutter_ui_templates/constant.dart';
import 'package:best_flutter_ui_templates/notification/components/defaultAppBar.dart';

import 'package:best_flutter_ui_templates/notification/components/notificationTiles.dart';
import 'package:flutter/material.dart';

import 'components/descSection.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'About Project,',
      ),
      body: Column(
        children: [
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '       Supervised By\n'
                ' Mallam Graded Project',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 2),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(),
            child: Image.asset(
              'assets/images/profile.jpg',
              height: 140,
              width: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: DescSection(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
