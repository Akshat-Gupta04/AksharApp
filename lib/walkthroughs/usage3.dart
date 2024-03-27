import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/akshar_pages/tut/tut_widget.dart';

// Focus widget keys for this walkthrough
final textField572besyh = GlobalKey();
final button2qxvg6ui = GlobalKey();
final column3gf7reo4 = GlobalKey();

/// usage3
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textField572besyh,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to use AksharAI?',
              explain: 'Type your input question or message',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: button2qxvg6ui,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to use AksharAI?',
              explain: 'Click on this button to submit your Request',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: column3gf7reo4,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to use AksharAI?',
              explain: 'Wait .. Till the Result gets shown up',
            ),
          ),
        ],
      ),
    ];
