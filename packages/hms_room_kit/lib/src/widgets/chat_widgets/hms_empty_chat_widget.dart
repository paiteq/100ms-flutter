///Package imports
library;

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hms_room_kit/i18n/strings.g.dart';

///Project imports
import 'package:hms_room_kit/src/layout_api/hms_theme_colors.dart';
import 'package:hms_room_kit/src/widgets/common_widgets/hms_subheading_text.dart';
import 'package:hms_room_kit/src/widgets/common_widgets/hms_title_text.dart';

///[HMSEmptyChatWidget] is the widget that is shown when there are no messages in the webRTC chat
class HMSEmptyChatWidget extends StatelessWidget {
  const HMSEmptyChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "packages/hms_room_kit/lib/src/assets/icons/empty_chat.svg",
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(
          height: 16,
        ),
        HMSTitleText(
          text: t.start_a_conversation,
          textColor: HMSThemeColors.onSurfaceHighEmphasis,
          fontSize: 20,
          letterSpacing: 0.15,
        ),
        const SizedBox(
          height: 8,
        ),
        HMSSubheadingText(
            text: t.there_are_no_messages_here_yet,
            maxLines: 2,
            textAlign: TextAlign.center,
            textColor: HMSThemeColors.onSurfaceMediumEmphasis)
      ],
    ));
  }
}
