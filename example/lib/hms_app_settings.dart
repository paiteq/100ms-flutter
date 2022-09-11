import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hmssdk_flutter_example/common/util/app_color.dart';
import 'package:hmssdk_flutter_example/common/util/utility_function.dart';
import 'package:hmssdk_flutter_example/hls-streaming/util/hls_title_text.dart';
import 'package:hmssdk_flutter_example/main.dart';
import 'package:url_launcher/url_launcher.dart';

class HMSAppSettings extends StatefulWidget {
  @override
  State<HMSAppSettings> createState() => _HMSAppSettingsState();
}

class _HMSAppSettingsState extends State<HMSAppSettings> {
  bool isDarkMode = true;
  bool skipPreview = false;
  bool mirrorCamera = true;
  bool showStats = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAppSettings();
  }

  Future<void> getAppSettings() async {
    skipPreview = await Utilities.getBoolData(key: 'skip-preview');
    mirrorCamera = await Utilities.getBoolData(key: 'mirror-camera');
    showStats = await Utilities.getBoolData(key: 'show-stats');
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://discord.gg/YtUqvA6j');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.6,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "App Settings",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          color: defaultColor,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/close_button.svg",
                        width: 40,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Divider(
                color: dividerColor,
                height: 5,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // ListTile(
                  //   enabled: false,
                  //   horizontalTitleGap: 2,
                  //   onTap: () async {
                  //     //   if (isDarkMode) {
                  //     //   HMSExampleApp.of(context).changeTheme(ThemeMode.light);
                  //     // } else {
                  //     //   HMSExampleApp.of(context).changeTheme(ThemeMode.dark);
                  //     // }
                  //   },
                  //   contentPadding: EdgeInsets.zero,
                  //   leading: SvgPicture.asset(
                  //     isDarkMode
                  //         ? "assets/icons/light_mode.svg"
                  //         : 'assets/icons/dark_mode.svg',
                  //     fit: BoxFit.scaleDown,
                  //   ),
                  //   title: Text(
                  //     "Dark Mode",
                  //     semanticsLabel: "fl_dark_light_mode",
                  //     style: GoogleFonts.inter(
                  //         fontSize: 14,
                  //         color: defaultColor,
                  //         letterSpacing: 0.25,
                  //         fontWeight: FontWeight.w600),
                  //   ),
                  //   trailing: CupertinoSwitch(
                  //       value: isDarkMode,
                  //       onChanged: ((value) => {

                  //       isDarkMode = !isDarkMode,
                  //       if(!isDarkMode)
                  //       HMSExampleApp.of(context).changeTheme(ThemeMode.light)
                  //       else
                  //       HMSExampleApp.of(context).changeTheme(ThemeMode.dark),
                  //       setState(() {})
                  //         })),
                  // ),
                  ListTile(
                    horizontalTitleGap: 2,
                    enabled: false,
                    contentPadding: EdgeInsets.zero,
                    leading: SvgPicture.asset(
                      "assets/icons/preview_state_on.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    title: Text(
                      "Enable Preview",
                      semanticsLabel: "fl_preview_enable",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: defaultColor,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: CupertinoSwitch(
                        activeColor: hmsdefaultColor,
                        value: skipPreview,
                        onChanged: (value) => {
                              Utilities.saveBoolData(
                                  key: 'skip-preview', value: !skipPreview),
                              setState(() {
                                skipPreview = !skipPreview;
                              })
                            }),
                  ),
                  ListTile(
                    horizontalTitleGap: 2,
                    enabled: false,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.cameraswitch_outlined,
                      color: defaultColor,
                    ),
                    title: Text(
                      "Mirror Camera",
                      semanticsLabel: "fl_mirror_camera_enable",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: defaultColor,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: CupertinoSwitch(
                        activeColor: hmsdefaultColor,

                        value: mirrorCamera,
                        onChanged: (value) => {
                              Utilities.saveBoolData(
                                  key: 'mirror-camera', value: !mirrorCamera),
                              setState(() {
                                mirrorCamera = !mirrorCamera;
                              })
                            }),
                  ),
                  ListTile(
                    horizontalTitleGap: 2,
                    enabled: false,
                    contentPadding: EdgeInsets.zero,
                    leading: SvgPicture.asset(
                      'assets/icons/stats.svg',
                      color: defaultColor,
                    ),
                    title: Text(
                      "Enable Stats",
                      semanticsLabel: "fl_stats_enable",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: defaultColor,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: CupertinoSwitch(
                        activeColor: hmsdefaultColor,
                        value: showStats,
                        onChanged: (value) => {
                              Utilities.saveBoolData(
                                  key: 'show-stats', value: !showStats),
                              setState(() {
                                showStats = !showStats;
                              })
                            }),
                  ),
                  ListTile(
                    horizontalTitleGap: 2,
                    enabled: true,
                    onTap: _launchUrl,
                    contentPadding: EdgeInsets.zero,
                    leading: SvgPicture.asset(
                      'assets/icons/bug.svg',
                      color: defaultColor,
                    ),
                    title: Text(
                      "Ask on Discord",
                      semanticsLabel: "fl_ask_feedback",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          color: defaultColor,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 15),
              child: Center(child: HLSTitleText(text: "Made with ❤️ by 100ms", textColor: defaultColor)),
            )
          ],
        ),
      ),
    );
  }
}
