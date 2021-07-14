enum HMSTrackKind { kHMSTrackKindAudio, kHMSTrackKindVideo, unknown}

extension HMSTrackKindValue on HMSTrackKind {
  static HMSTrackKind getHMSTrackKindFromName(String name) {
    switch (name) {
      case 'kHMSTrackKindAudio':
        return HMSTrackKind.kHMSTrackKindAudio;
      case 'kHMSTrackKindVideo':
        return HMSTrackKind.kHMSTrackKindVideo;
      case 'Audio':
        return HMSTrackKind.kHMSTrackKindAudio;
      case 'Video':
        return HMSTrackKind.kHMSTrackKindVideo;
      default:
        return HMSTrackKind.unknown;
    }
  }

  static String getValueFromHMSTrackKind(HMSTrackKind hmsTrackKind) {
    switch (hmsTrackKind) {
      case HMSTrackKind.kHMSTrackKindAudio:
        return 'kHMSTrackKindAudio';
      case HMSTrackKind.kHMSTrackKindVideo:
        return 'kHMSTrackKindVideo';
      case HMSTrackKind.unknown:
        return '';
    }
  }
}
