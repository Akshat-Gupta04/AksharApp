import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/akshar_pages/tut/tut_widget.dart';

// Focus widget keys for this walkthrough
final columnAiapv63e = GlobalKey();
final dropDownRmill3an = GlobalKey();

/// usage2
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnAiapv63e,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to use AksharAI?',
              explain: 'You will be guided to this frame',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: dropDownRmill3an,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to use AksharAI?',
              explain: 'Choose  how you want to provide inputs',
            ),
          ),
        ],
      ),
    ];
