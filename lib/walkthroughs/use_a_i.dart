import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/akshar_pages/tut/tut_widget.dart';

// Focus widget keys for this walkthrough
final columnXcznc8c7 = GlobalKey();
final column6xhs2qa9 = GlobalKey();
final column5grtsbdu = GlobalKey();
final container0l8b72ol = GlobalKey();

/// useAI
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnXcznc8c7,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'Do u want to connect with Community?',
              explain: 'click here to connect and asign task to users',
            ),
          ),
        ],
      ),

      /// Step 2
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

      /// Step 3
      TargetFocus(
        keyTarget: column5grtsbdu,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const TutWidget(
              question: 'How to Start a new Chat?',
              explain: 'Click on this button to create a new chat',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: container0l8b72ol,
        enableOverlayTab: true,
        alignSkip: Alignment.topLeft,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const TutWidget(
              question: 'How to update user information? ',
              explain: 'Click here to update your details ',
            ),
          ),
        ],
      ),
    ];
