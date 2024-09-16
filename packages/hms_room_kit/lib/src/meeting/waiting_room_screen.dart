library;

///Package imports
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hms_room_kit/i18n/strings.g.dart';
import 'package:provider/provider.dart';

///Project imports
import 'package:hms_room_kit/hms_room_kit.dart';
import 'package:hms_room_kit/src/meeting/meeting_store.dart';

///[WaitingRoomScreen] is a widget that is used to render the waiting room screen
///This is rendered when the user is waiting for the host to join
///or when the user has only screenshare option
class WaitingRoomScreen extends StatelessWidget {
  ///[showScreenshareOption] is a function that returns true if the user has only screenshare option
  bool showScreenshareOption(MeetingStore meetingStore) {
    return (!(meetingStore.localPeer?.role.publishSettings?.allowed
                .contains("video") ??
            true) &&
        (meetingStore.localPeer?.role.publishSettings?.allowed
                .contains("screen") ??
            false) &&
        !(meetingStore.localPeer?.role.publishSettings?.allowed
                .contains("audio") ??
            true));
  }

  @override
  Widget build(BuildContext context) {
    var meetingStore = context.watch<MeetingStore>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: showScreenshareOption(meetingStore)
          ? [
              CircleAvatar(
                backgroundColor: HMSThemeColors.surfaceDefault,
                radius: 40,
                child: SvgPicture.asset(
                  "packages/hms_room_kit/lib/src/assets/icons/screen_share.svg",
                  height: 37,
                  width: 37,
                  colorFilter: ColorFilter.mode(
                      HMSThemeColors.onSurfaceHighEmphasis, BlendMode.srcIn),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              HMSTitleText(
                text: t.ready_to_present,
                textColor: HMSThemeColors.onSurfaceHighEmphasis,
                fontSize: 24,
                lineHeight: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              HMSTitleText(
                text: t.select_screenshare_button,
                textColor: HMSThemeColors.onSurfaceMediumEmphasis,
                fontWeight: FontWeight.w400,
                maxLines: 3,
              )
            ]
          : [
              CircleAvatar(
                backgroundColor: HMSThemeColors.surfaceDefault,
                radius: 40,
                child: SvgPicture.asset(
                  "packages/hms_room_kit/lib/src/assets/icons/add_peer.svg",
                  height: 37,
                  width: 37,
                  colorFilter: ColorFilter.mode(
                      HMSThemeColors.onSurfaceHighEmphasis, BlendMode.srcIn),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              HMSTitleText(
                text: t.waiting_for_host_to_join,
                textColor: HMSThemeColors.onSurfaceHighEmphasis,
                fontSize: 24,
                lineHeight: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              HMSTitleText(
                text: t.sit_back_and_relax,
                textColor: HMSThemeColors.onSurfaceMediumEmphasis,
                fontWeight: FontWeight.w400,
              )
            ],
    );
  }
}
