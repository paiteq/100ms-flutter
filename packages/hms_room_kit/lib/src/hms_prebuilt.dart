library;

///Package imports
import 'package:flutter/widgets.dart';

///Project imports
import 'package:hms_room_kit/hms_room_kit.dart';
import 'package:hms_room_kit/i18n/strings.g.dart';
import 'package:hms_room_kit/src/screen_controller.dart';

///[HMSPrebuilt] is the main widget that is used to render the prebuilt
///It takes following parameters:
///[roomCode] - The room code of the room to join
///[options] - The options for the prebuilt for more details check the [HMSPrebuiltOptions] class
class HMSPrebuilt extends StatefulWidget {
  ///The room code of the room to join
  ///This is a required parameter
  ///
  /// Example: For the public Room: https://public.app.100ms.live/meeting/xvm-wxwo-gbl
  /// The room code is: xvm-wxwo-gbl
  final String? roomCode;
  final String? languageCode;

  ///[authToken]: The auth token to join the room
  final String? authToken;

  ///The options for the prebuilt
  ///For more details checkout the [HMSPrebuiltOptions] class
  ///Defaults to null
  final HMSPrebuiltOptions? options;

  ///The callback for the leave room button
  ///This function can be passed if you wish to perform some specific actions
  ///in addition to leaving the room when the leave room button is pressed
  final Function? onLeave;

  ///The key for the widget
  HMSPrebuilt(
      {super.key,
      required this.roomCode,
      this.options,
      this.onLeave,
      this.authToken,
      this.languageCode}) {
    if (roomCode == null && authToken == null) {
      throw ArgumentError.notNull(
          "At least one parameter roomCode or authToken must be provided.");
    }
  }

  @override
  State<HMSPrebuilt> createState() => _HMSPrebuiltState();
}

class _HMSPrebuiltState extends State<HMSPrebuilt> {
  ///Builds the widget
  ///Returns a [ScreenController] widget
  ///The [ScreenController] is the main widget that renders the prebuilt
  ///For more details checkout the [ScreenController] class
  ///It takes the [widget.roomCode],[widget.authToken], [widget.options] and [widget.onLeave] as parameters
  ///The [widget.roomCode] is the room code of the room to join
  ///The [widget.authToken] is the auth token to join the room
  ///User need to pass either [widget.roomCode] or [widget.authToken] to join the room
  ///The [widget.options] are the options for the prebuilt
  ///For more details checkout the [HMSPrebuiltOptions] class
  ///The [widget.options] are optional and are used to customize the prebuilt
  ///The [widget.onLeave] is the callback for the leave room button

  @override
  void initState() {
    if (widget.languageCode == 'nl') {
      LocaleSettings.setLocale(AppLocale.nl);
    } else {
      LocaleSettings.setLocale(AppLocale.en);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenController(
      roomCode: widget.roomCode,
      authToken: widget.authToken,
      options: widget.options,
      onLeave: widget.onLeave,
    );
  }
}
