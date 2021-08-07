import 'package:flutter/material.dart';
import 'package:moise_gui/utils/openUrl.dart';

import '../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
    this.clickable = false
  }) : super(key: key);

  final String? title, text;
  final bool clickable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          clickable
            ? MouseRegion(
              cursor: SystemMouseCursors.click,
              child: new GestureDetector(
                onTap: () {
                  openUrl('mailto:contact@moisegui.com');
                },

                child: Text(text!),
              )
            )
              :
              Text(text!),
        ],
      ),
    );
  }
}
