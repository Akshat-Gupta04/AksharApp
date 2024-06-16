import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/akshar_pages/tut/tut_widget.dart';

// Focus widget keys for this walkthrough
final row0l5lxgqn = GlobalKey();
final buttonR43kqq7m = GlobalKey();

/// addUser
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: row0l5lxgqn,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const TutWidget(
              question: 'How to add Users?',
              explain: 'choose from the available users to create a chat ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonR43kqq7m,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to add Users?',
              explain: 'Click here to conferm',
            ),
          ),
        ],
      ),
    ];
