import 'package:flutter/material.dart';
import 'package:moise_gui/constants.dart';
import 'package:flutter_svg/svg.dart';
//import 'dart:js' as js;
import '../../../utils/openUrl.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Morocco",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Marrakech",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "24",
                    ),
                    AreaInfoText(
                      title: "Contact",
                      text: "contact@moisegui.com",
                      clickable: true,
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            new GestureDetector(
                              onTap: () {
                                openUrl('https://drive.google.com/file/d/1WY6j8YPftLLGh70kAQi_c68NQLwLCt86/view?usp=sharing');
                              },
                              child: Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                              ),
                      ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
//                              js.context.callMethod('open',
//                                  ['https://www.linkedin.com/in/moise-gui/']);
                              openUrl('https://www.linkedin.com/in/moise-gui/');
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
//                              js.context.callMethod(
//                                  'open', ['https://github.com/MoiseGui']);
                              openUrl('https://github.com/MoiseGui');
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
//                              js.context.callMethod(
//                                  'open', ['https://twitter.com/gui_moise']);
                            openUrl('https://twitter.com/gui_moise');
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
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
