///Package imports
library;

import 'package:flutter/cupertino.dart';

///Project imports
import 'package:hms_room_kit/hms_room_kit.dart';
import 'package:hms_room_kit/i18n/strings.g.dart';
import 'package:hms_room_kit/src/widgets/poll_widgets/poll_quiz_selection_button.dart';

///[PollQuizSelectionWidget] renders the widget to select between quiz or poll
class PollQuizSelectionWidget extends StatefulWidget {
  final Function updateSelectionCallback;

  const PollQuizSelectionWidget(
      {super.key, required this.updateSelectionCallback});

  @override
  State<PollQuizSelectionWidget> createState() =>
      _PollQuizSelectionWidgetState();
}

class _PollQuizSelectionWidgetState extends State<PollQuizSelectionWidget> {
  int index = 0;

  ///[_updateSelection] updates the selection for poll or quiz
  void _updateSelection(newIndex) {
    widget.updateSelectionCallback(newIndex);
    setState(() {
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HMSSubtitleText(
            text: t.select_the_type_you_want_to_continue_with,
            textColor: HMSThemeColors.onSurfaceMediumEmphasis),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => _updateSelection(0),
              child: PollQuizSelectionButton(
                isSelected: (index == 0),
                iconName: "poll",
                text: t.poll,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () => _updateSelection(1),
              child: PollQuizSelectionButton(
                isSelected: (index == 1),
                iconName: "quiz",
                text: t.quiz,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
