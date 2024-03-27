import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/akshar_pages/tut/tut_widget.dart';

// Focus widget keys for this walkthrough
final column6xhs2qa9 = GlobalKey();

/// useAI
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: column6xhs2qa9,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to use AksharAI?',
              explain: 'Click on this Button to access our AI',
            ),
          ),
        ],
      ),
    ];
