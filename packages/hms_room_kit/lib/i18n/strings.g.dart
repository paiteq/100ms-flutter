/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 278 (139 per locale)
///
/// Built on 2024-09-16 at 10:52 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	nl(languageCode: 'nl', build: _StringsNl.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get join_now => 'Join now';
	String get let_get_started => 'Aan de slag';
	String get dont_leave => 'Don’t Leave';
	String get leave => 'Leave';
	String get ok => 'OK';
	String get cancel => 'Cancel';
	String get recording => 'Recording';
	String get single_file => 'Single file per layer';
	String get view_on_demand => 'Video on Demand';
	String get select_role_for_mute => 'Select Role for Mute';
	String get mute_all => 'Mute All';
	String get mute => 'Mute';
	String get select_role_for_change_role => 'Select roles for change role';
	String get change_role_to => 'Change roles to';
	String get please_select_a_role => 'Please select a role';
	String get change_role => 'Change Role';
	String get end_room => 'End Room';
	String get others_can_contine_after_you_leave => 'Others will continue after you leave. You can join the studio again.';
	String get about_session => 'About Session';
	String get live => 'Live';
	String get go_live => 'Go Live';
	String get stream_yet_to_start => 'Stream yet to start';
	String get sit_back_and_relax => 'Sit back and relax';
	String get you_are_first_to_join => 'You’re the first to join';
	String get sit_back_and_relax_till_others_join => 'Sit back and relax till others join';
	String get ready_to_present => 'Ready to present';
	String get select_screenshare_button => 'Select the screenshare button \nfrom the menu to start presenting.';
	String get waiting_for_host_to_join => 'Waiting for Host to join';
	String get setup_audio_before_joining => 'Setup your audio and video before joining';
	String get enable_permissions => 'Enable permissions';
	String get few_things_before_joining => 'Just a few things before you join';
	String get grant_permissions => 'Grant Permissions';
	String get decline => 'Decline';
	String get you_are_invited_to_join_stage => 'You’re invited to join the stage';
	String get change_audio_device => 'Change Audio Device';
	String get change_audio_mode => 'Change Audio Mode';
	String get request_permission_from_user => 'Request permission from the user';
	String get change_streaming_quality => 'Change Streaming Quality';
	String get change_aspect_ratio => 'Change Aspect Ratio';
	String get change => 'Change';
	String get reject => 'Reject';
	String get accept => 'Accept';
	String get requested_to_change_your_role => 'requested to change your role to';
	String get options => 'Options';
	String get participants => 'Participants';
	String get sharing_screen => 'Sharing Screen';
	String get share_screen => 'Share Screen';
	String get iam_back => 'I\'m Back';
	String get be_right_back => 'Be Right Back';
	String get lower_hand => 'Lower Hand';
	String get raise_hand => 'Raise Hand';
	String get polls_and_quizes => 'Polls and Quizzes';
	String get record => 'Record';
	String get stop_recording => 'Stop Recording';
	String get are_you_sure_stop_recording => 'Are you sure you want to stop recording? You\n can’t undo this action.';
	String get recording_paused => 'Recording Paused';
	String get noise_reduced => 'Noise Reduced';
	String get reduce_noise => 'Reduce Noise';
	String get close_whiteboard => 'Close Whiteboard';
	String get open_whiteboard => 'Open Whiteboard';
	String get closed_captions => 'Closed Captions';
	String get hide_captions => 'Hide Captions';
	String get show_Captions => 'Show Captions';
	String get enable_for_everyone => 'Enable for Everyone';
	String get this_will_enable_close_captions => 'This will enable Closed Captions for everyone in this room. You can disable it later.';
	String get this_will_disable_close_captions => 'This will disable Closed Captions for everyone in this room. You can enable it again.';
	String get enable_close_captions => 'Enable Closed Captions (CC) for this session?';
	String get chat => 'Chat';
	String get pause_chat => 'Pause Chat';
	String get resume_chat => 'Resume Chat';
	String get vote => 'Vote';
	String get answer => 'Answer';
	String get voted => 'Voted';
	String get answered => 'Answered';
	String get your_answer => 'Your Answer';
	String get question_type => 'Question Type';
	String get question => 'Question';
	String get select_radio_button => 'Select one of the radio button to mark the correct answer';
	String get add_an_option => 'Add an option';
	String get point_weightage => 'Point Weightage';
	String get save => 'Save';
	String get edit => 'Edit';
	String get poll => 'Poll';
	String get quiz => 'Quiz';
	String get create => 'Create';
	String get hide_vote_count => 'Hide vote count';
	String get settings => 'Settings';
	String get you_left_the_stream => 'You left the stream';
	String get session_ended => 'Session ended';
	String get you_left_the_meeting => 'You left the meeting';
	String get have_a_nice_day => 'Have a nice day!';
	String get left_by_mistake => 'Left by mistake?';
	String get ended_by_mistake => 'Ended by mistake?';
	String get rejoin => 'Rejoin';
	String get restart => 'Restart';
	String get anonymous => 'Anonymous';
	String get audio_output => 'Audio Output';
	String get auto => 'Auto';
	String get mute_audio => 'Mute Audio';
	String get enter_name => 'Enter Name...';
	String get change_name => 'Change Name';
	String get your_name_will_be_visible => 'Your name will be visible to other participants in\n the session.';
	String get remove_participant => 'Remove Participant';
	String get pin => 'Pin';
	String get unpin => 'Unpin';
	String get message_options => 'Message Options';
	String get unblock_from_chat => 'Unblock from Chat';
	String get block_from_chat => 'Block from Chat';
	String get hide_for_everyone => 'Hide for Everyone';
	String get copy_text => 'Copy Text';
	String get for_me => 'for Me';
	String get show => 'Show';
	String get hide => 'Hide';
	String get disable_for_everyone => 'Disable For Everyone';
	String get quality => 'Quality';
	String get session => 'Session';
	String get stream => 'Stream';
	String get end_stream => 'End Stream';
	String get end_session => 'End Session';
	String get this_stream_will_end => 'The stream will end for everyone after they’ve watched it.';
	String get this_session_will_end => 'The session will end for everyone in the room immediately.';
	String get minimize_tile => 'Minimize Your Tile';
	String get stop_screen_share => 'Stop Screen Share';
	String get audio_settings  => 'Audio Settings';
	String get mute_room => 'Mute Room';
	String get unmute_room => 'Unmute Room';
	String get start_recording => 'Start Recording';
	String get send_message_to => 'Send message to';
	String get everyone => 'Everyone';
	String get no_participant_yet => 'No recipients yet';
	String get direct_message => 'DIRECT MESSAGE';
	String get role_group => 'ROLE GROUP';
	String get view => 'View';
	String get view_all => 'View All';
	String get unmute => 'Unmute';
	String get video => 'Video';
	String get audio => 'Audio';
	String get remove_from_stage => 'Remove from Stage';
	String get bring_on_stage => 'Bring on Stage';
}

// Path: <root>
class _StringsNl implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsNl.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsNl _root = this; // ignore: unused_field

	// Translations
	@override String get join_now => 'Sluit je nu aan';
	@override String get let_get_started => 'Get Started';
	@override String get dont_leave => 'Don’t Leave';
	@override String get leave => 'Leave';
	@override String get ok => 'OK';
	@override String get cancel => 'Cancel';
	@override String get recording => 'Recording';
	@override String get single_file => 'Single file per layer';
	@override String get view_on_demand => 'Video on Demand';
	@override String get select_role_for_mute => 'Select Role for Mute';
	@override String get mute_all => 'Mute All';
	@override String get mute => 'Mute';
	@override String get select_role_for_change_role => 'Select roles for change role';
	@override String get change_role_to => 'Change roles to';
	@override String get please_select_a_role => 'Please select a role';
	@override String get change_role => 'Change Role';
	@override String get end_room => 'End Room';
	@override String get others_can_contine_after_you_leave => 'Others will continue after you leave. You can join the studio again.';
	@override String get about_session => 'About Session';
	@override String get live => 'Live';
	@override String get go_live => 'Go Live';
	@override String get stream_yet_to_start => 'Stream yet to start';
	@override String get sit_back_and_relax => 'Sit back and relax';
	@override String get you_are_first_to_join => 'You’re the first to join';
	@override String get sit_back_and_relax_till_others_join => 'Sit back and relax till others join';
	@override String get ready_to_present => 'Ready to present';
	@override String get select_screenshare_button => 'Select the screenshare button \nfrom the menu to start presenting.';
	@override String get waiting_for_host_to_join => 'Waiting for Host to join';
	@override String get setup_audio_before_joining => 'Setup your audio and video before joining';
	@override String get enable_permissions => 'Enable permissions';
	@override String get few_things_before_joining => 'Just a few things before you join';
	@override String get grant_permissions => 'Grant Permissions';
	@override String get decline => 'Decline';
	@override String get you_are_invited_to_join_stage => 'You’re invited to join the stage';
	@override String get change_audio_device => 'Change Audio Device';
	@override String get change_audio_mode => 'Change Audio Mode';
	@override String get request_permission_from_user => 'Request permission from the user';
	@override String get change_streaming_quality => 'Change Streaming Quality';
	@override String get change_aspect_ratio => 'Change Aspect Ratio';
	@override String get change => 'Change';
	@override String get reject => 'Reject';
	@override String get accept => 'Accept';
	@override String get requested_to_change_your_role => 'requested to change your role to';
	@override String get options => 'Options';
	@override String get participants => 'Participants';
	@override String get sharing_screen => 'Sharing Screen';
	@override String get share_screen => 'Share Screen';
	@override String get iam_back => 'I\'m Back';
	@override String get be_right_back => 'Be Right Back';
	@override String get lower_hand => 'Lower Hand';
	@override String get raise_hand => 'Raise Hand';
	@override String get polls_and_quizes => 'Polls and Quizzes';
	@override String get record => 'Record';
	@override String get stop_recording => 'Stop Recording';
	@override String get are_you_sure_stop_recording => 'Are you sure you want to stop recording? You\n can’t undo this action.';
	@override String get recording_paused => 'Recording Paused';
	@override String get noise_reduced => 'Noise Reduced';
	@override String get reduce_noise => 'Reduce Noise';
	@override String get close_whiteboard => 'Close Whiteboard';
	@override String get open_whiteboard => 'Open Whiteboard';
	@override String get closed_captions => 'Closed Captions';
	@override String get hide_captions => 'Hide Captions';
	@override String get show_Captions => 'Show Captions';
	@override String get enable_for_everyone => 'Enable for Everyone';
	@override String get this_will_enable_close_captions => 'This will enable Closed Captions for everyone in this room. You can disable it later.';
	@override String get this_will_disable_close_captions => 'This will disable Closed Captions for everyone in this room. You can enable it again.';
	@override String get enable_close_captions => 'Enable Closed Captions (CC) for this session?';
	@override String get chat => 'Chat';
	@override String get pause_chat => 'Pause Chat';
	@override String get resume_chat => 'Resume Chat';
	@override String get vote => 'Vote';
	@override String get answer => 'Answer';
	@override String get voted => 'Voted';
	@override String get answered => 'Answered';
	@override String get your_answer => 'Your Answer';
	@override String get question_type => 'Question Type';
	@override String get question => 'Question';
	@override String get select_radio_button => 'Select one of the radio button to mark the correct answer';
	@override String get add_an_option => 'Add an option';
	@override String get point_weightage => 'Point Weightage';
	@override String get save => 'Save';
	@override String get edit => 'Edit';
	@override String get poll => 'Poll';
	@override String get quiz => 'Quiz';
	@override String get create => 'Create';
	@override String get hide_vote_count => 'Hide vote count';
	@override String get settings => 'Settings';
	@override String get you_left_the_stream => 'You left the stream';
	@override String get session_ended => 'Session ended';
	@override String get you_left_the_meeting => 'You left the meeting';
	@override String get have_a_nice_day => 'Have a nice day!';
	@override String get left_by_mistake => 'Left by mistake?';
	@override String get ended_by_mistake => 'Ended by mistake?';
	@override String get rejoin => 'Rejoin';
	@override String get restart => 'Restart';
	@override String get anonymous => 'Anonymous';
	@override String get audio_output => 'Audio Output';
	@override String get auto => 'Auto';
	@override String get mute_audio => 'Mute Audio';
	@override String get enter_name => 'Enter Name...';
	@override String get change_name => 'Change Name';
	@override String get your_name_will_be_visible => 'Your name will be visible to other participants in\n the session.';
	@override String get remove_participant => 'Remove Participant';
	@override String get pin => 'Pin';
	@override String get unpin => 'Unpin';
	@override String get message_options => 'Message Options';
	@override String get unblock_from_chat => 'Unblock from Chat';
	@override String get block_from_chat => 'Block from Chat';
	@override String get hide_for_everyone => 'Hide for Everyone';
	@override String get copy_text => 'Copy Text';
	@override String get for_me => 'for Me';
	@override String get show => 'Show';
	@override String get hide => 'Hide';
	@override String get disable_for_everyone => 'Disable For Everyone';
	@override String get quality => 'Quality';
	@override String get session => 'Session';
	@override String get stream => 'Stream';
	@override String get end_stream => 'End Stream';
	@override String get end_session => 'End Session';
	@override String get this_stream_will_end => 'The stream will end for everyone after they’ve watched it.';
	@override String get this_session_will_end => 'The session will end for everyone in the room immediately.';
	@override String get minimize_tile => 'Minimize Your Tile';
	@override String get stop_screen_share => 'Stop Screen Share';
	@override String get audio_settings  => 'Audio Settings';
	@override String get mute_room => 'Mute Room';
	@override String get unmute_room => 'Unmute Room';
	@override String get start_recording => 'Start Recording';
	@override String get send_message_to => 'Send message to';
	@override String get everyone => 'Everyone';
	@override String get no_participant_yet => 'No recipients yet';
	@override String get direct_message => 'DIRECT MESSAGE';
	@override String get role_group => 'ROLE GROUP';
	@override String get view => 'View';
	@override String get view_all => 'View All';
	@override String get unmute => 'Unmute';
	@override String get video => 'Video';
	@override String get audio => 'Audio';
	@override String get remove_from_stage => 'Remove from Stage';
	@override String get bring_on_stage => 'Bring on Stage';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'join_now': return 'Join now';
			case 'let_get_started': return 'Aan de slag';
			case 'dont_leave': return 'Don’t Leave';
			case 'leave': return 'Leave';
			case 'ok': return 'OK';
			case 'cancel': return 'Cancel';
			case 'recording': return 'Recording';
			case 'single_file': return 'Single file per layer';
			case 'view_on_demand': return 'Video on Demand';
			case 'select_role_for_mute': return 'Select Role for Mute';
			case 'mute_all': return 'Mute All';
			case 'mute': return 'Mute';
			case 'select_role_for_change_role': return 'Select roles for change role';
			case 'change_role_to': return 'Change roles to';
			case 'please_select_a_role': return 'Please select a role';
			case 'change_role': return 'Change Role';
			case 'end_room': return 'End Room';
			case 'others_can_contine_after_you_leave': return 'Others will continue after you leave. You can join the studio again.';
			case 'about_session': return 'About Session';
			case 'live': return 'Live';
			case 'go_live': return 'Go Live';
			case 'stream_yet_to_start': return 'Stream yet to start';
			case 'sit_back_and_relax': return 'Sit back and relax';
			case 'you_are_first_to_join': return 'You’re the first to join';
			case 'sit_back_and_relax_till_others_join': return 'Sit back and relax till others join';
			case 'ready_to_present': return 'Ready to present';
			case 'select_screenshare_button': return 'Select the screenshare button \nfrom the menu to start presenting.';
			case 'waiting_for_host_to_join': return 'Waiting for Host to join';
			case 'setup_audio_before_joining': return 'Setup your audio and video before joining';
			case 'enable_permissions': return 'Enable permissions';
			case 'few_things_before_joining': return 'Just a few things before you join';
			case 'grant_permissions': return 'Grant Permissions';
			case 'decline': return 'Decline';
			case 'you_are_invited_to_join_stage': return 'You’re invited to join the stage';
			case 'change_audio_device': return 'Change Audio Device';
			case 'change_audio_mode': return 'Change Audio Mode';
			case 'request_permission_from_user': return 'Request permission from the user';
			case 'change_streaming_quality': return 'Change Streaming Quality';
			case 'change_aspect_ratio': return 'Change Aspect Ratio';
			case 'change': return 'Change';
			case 'reject': return 'Reject';
			case 'accept': return 'Accept';
			case 'requested_to_change_your_role': return 'requested to change your role to';
			case 'options': return 'Options';
			case 'participants': return 'Participants';
			case 'sharing_screen': return 'Sharing Screen';
			case 'share_screen': return 'Share Screen';
			case 'iam_back': return 'I\'m Back';
			case 'be_right_back': return 'Be Right Back';
			case 'lower_hand': return 'Lower Hand';
			case 'raise_hand': return 'Raise Hand';
			case 'polls_and_quizes': return 'Polls and Quizzes';
			case 'record': return 'Record';
			case 'stop_recording': return 'Stop Recording';
			case 'are_you_sure_stop_recording': return 'Are you sure you want to stop recording? You\n can’t undo this action.';
			case 'recording_paused': return 'Recording Paused';
			case 'noise_reduced': return 'Noise Reduced';
			case 'reduce_noise': return 'Reduce Noise';
			case 'close_whiteboard': return 'Close Whiteboard';
			case 'open_whiteboard': return 'Open Whiteboard';
			case 'closed_captions': return 'Closed Captions';
			case 'hide_captions': return 'Hide Captions';
			case 'show_Captions': return 'Show Captions';
			case 'enable_for_everyone': return 'Enable for Everyone';
			case 'this_will_enable_close_captions': return 'This will enable Closed Captions for everyone in this room. You can disable it later.';
			case 'this_will_disable_close_captions': return 'This will disable Closed Captions for everyone in this room. You can enable it again.';
			case 'enable_close_captions': return 'Enable Closed Captions (CC) for this session?';
			case 'chat': return 'Chat';
			case 'pause_chat': return 'Pause Chat';
			case 'resume_chat': return 'Resume Chat';
			case 'vote': return 'Vote';
			case 'answer': return 'Answer';
			case 'voted': return 'Voted';
			case 'answered': return 'Answered';
			case 'your_answer': return 'Your Answer';
			case 'question_type': return 'Question Type';
			case 'question': return 'Question';
			case 'select_radio_button': return 'Select one of the radio button to mark the correct answer';
			case 'add_an_option': return 'Add an option';
			case 'point_weightage': return 'Point Weightage';
			case 'save': return 'Save';
			case 'edit': return 'Edit';
			case 'poll': return 'Poll';
			case 'quiz': return 'Quiz';
			case 'create': return 'Create';
			case 'hide_vote_count': return 'Hide vote count';
			case 'settings': return 'Settings';
			case 'you_left_the_stream': return 'You left the stream';
			case 'session_ended': return 'Session ended';
			case 'you_left_the_meeting': return 'You left the meeting';
			case 'have_a_nice_day': return 'Have a nice day!';
			case 'left_by_mistake': return 'Left by mistake?';
			case 'ended_by_mistake': return 'Ended by mistake?';
			case 'rejoin': return 'Rejoin';
			case 'restart': return 'Restart';
			case 'anonymous': return 'Anonymous';
			case 'audio_output': return 'Audio Output';
			case 'auto': return 'Auto';
			case 'mute_audio': return 'Mute Audio';
			case 'enter_name': return 'Enter Name...';
			case 'change_name': return 'Change Name';
			case 'your_name_will_be_visible': return 'Your name will be visible to other participants in\n the session.';
			case 'remove_participant': return 'Remove Participant';
			case 'pin': return 'Pin';
			case 'unpin': return 'Unpin';
			case 'message_options': return 'Message Options';
			case 'unblock_from_chat': return 'Unblock from Chat';
			case 'block_from_chat': return 'Block from Chat';
			case 'hide_for_everyone': return 'Hide for Everyone';
			case 'copy_text': return 'Copy Text';
			case 'for_me': return 'for Me';
			case 'show': return 'Show';
			case 'hide': return 'Hide';
			case 'disable_for_everyone': return 'Disable For Everyone';
			case 'quality': return 'Quality';
			case 'session': return 'Session';
			case 'stream': return 'Stream';
			case 'end_stream': return 'End Stream';
			case 'end_session': return 'End Session';
			case 'this_stream_will_end': return 'The stream will end for everyone after they’ve watched it.';
			case 'this_session_will_end': return 'The session will end for everyone in the room immediately.';
			case 'minimize_tile': return 'Minimize Your Tile';
			case 'stop_screen_share': return 'Stop Screen Share';
			case 'audio_settings ': return 'Audio Settings';
			case 'mute_room': return 'Mute Room';
			case 'unmute_room': return 'Unmute Room';
			case 'start_recording': return 'Start Recording';
			case 'send_message_to': return 'Send message to';
			case 'everyone': return 'Everyone';
			case 'no_participant_yet': return 'No recipients yet';
			case 'direct_message': return 'DIRECT MESSAGE';
			case 'role_group': return 'ROLE GROUP';
			case 'view': return 'View';
			case 'view_all': return 'View All';
			case 'unmute': return 'Unmute';
			case 'video': return 'Video';
			case 'audio': return 'Audio';
			case 'remove_from_stage': return 'Remove from Stage';
			case 'bring_on_stage': return 'Bring on Stage';
			default: return null;
		}
	}
}

extension on _StringsNl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'join_now': return 'Sluit je nu aan';
			case 'let_get_started': return 'Get Started';
			case 'dont_leave': return 'Don’t Leave';
			case 'leave': return 'Leave';
			case 'ok': return 'OK';
			case 'cancel': return 'Cancel';
			case 'recording': return 'Recording';
			case 'single_file': return 'Single file per layer';
			case 'view_on_demand': return 'Video on Demand';
			case 'select_role_for_mute': return 'Select Role for Mute';
			case 'mute_all': return 'Mute All';
			case 'mute': return 'Mute';
			case 'select_role_for_change_role': return 'Select roles for change role';
			case 'change_role_to': return 'Change roles to';
			case 'please_select_a_role': return 'Please select a role';
			case 'change_role': return 'Change Role';
			case 'end_room': return 'End Room';
			case 'others_can_contine_after_you_leave': return 'Others will continue after you leave. You can join the studio again.';
			case 'about_session': return 'About Session';
			case 'live': return 'Live';
			case 'go_live': return 'Go Live';
			case 'stream_yet_to_start': return 'Stream yet to start';
			case 'sit_back_and_relax': return 'Sit back and relax';
			case 'you_are_first_to_join': return 'You’re the first to join';
			case 'sit_back_and_relax_till_others_join': return 'Sit back and relax till others join';
			case 'ready_to_present': return 'Ready to present';
			case 'select_screenshare_button': return 'Select the screenshare button \nfrom the menu to start presenting.';
			case 'waiting_for_host_to_join': return 'Waiting for Host to join';
			case 'setup_audio_before_joining': return 'Setup your audio and video before joining';
			case 'enable_permissions': return 'Enable permissions';
			case 'few_things_before_joining': return 'Just a few things before you join';
			case 'grant_permissions': return 'Grant Permissions';
			case 'decline': return 'Decline';
			case 'you_are_invited_to_join_stage': return 'You’re invited to join the stage';
			case 'change_audio_device': return 'Change Audio Device';
			case 'change_audio_mode': return 'Change Audio Mode';
			case 'request_permission_from_user': return 'Request permission from the user';
			case 'change_streaming_quality': return 'Change Streaming Quality';
			case 'change_aspect_ratio': return 'Change Aspect Ratio';
			case 'change': return 'Change';
			case 'reject': return 'Reject';
			case 'accept': return 'Accept';
			case 'requested_to_change_your_role': return 'requested to change your role to';
			case 'options': return 'Options';
			case 'participants': return 'Participants';
			case 'sharing_screen': return 'Sharing Screen';
			case 'share_screen': return 'Share Screen';
			case 'iam_back': return 'I\'m Back';
			case 'be_right_back': return 'Be Right Back';
			case 'lower_hand': return 'Lower Hand';
			case 'raise_hand': return 'Raise Hand';
			case 'polls_and_quizes': return 'Polls and Quizzes';
			case 'record': return 'Record';
			case 'stop_recording': return 'Stop Recording';
			case 'are_you_sure_stop_recording': return 'Are you sure you want to stop recording? You\n can’t undo this action.';
			case 'recording_paused': return 'Recording Paused';
			case 'noise_reduced': return 'Noise Reduced';
			case 'reduce_noise': return 'Reduce Noise';
			case 'close_whiteboard': return 'Close Whiteboard';
			case 'open_whiteboard': return 'Open Whiteboard';
			case 'closed_captions': return 'Closed Captions';
			case 'hide_captions': return 'Hide Captions';
			case 'show_Captions': return 'Show Captions';
			case 'enable_for_everyone': return 'Enable for Everyone';
			case 'this_will_enable_close_captions': return 'This will enable Closed Captions for everyone in this room. You can disable it later.';
			case 'this_will_disable_close_captions': return 'This will disable Closed Captions for everyone in this room. You can enable it again.';
			case 'enable_close_captions': return 'Enable Closed Captions (CC) for this session?';
			case 'chat': return 'Chat';
			case 'pause_chat': return 'Pause Chat';
			case 'resume_chat': return 'Resume Chat';
			case 'vote': return 'Vote';
			case 'answer': return 'Answer';
			case 'voted': return 'Voted';
			case 'answered': return 'Answered';
			case 'your_answer': return 'Your Answer';
			case 'question_type': return 'Question Type';
			case 'question': return 'Question';
			case 'select_radio_button': return 'Select one of the radio button to mark the correct answer';
			case 'add_an_option': return 'Add an option';
			case 'point_weightage': return 'Point Weightage';
			case 'save': return 'Save';
			case 'edit': return 'Edit';
			case 'poll': return 'Poll';
			case 'quiz': return 'Quiz';
			case 'create': return 'Create';
			case 'hide_vote_count': return 'Hide vote count';
			case 'settings': return 'Settings';
			case 'you_left_the_stream': return 'You left the stream';
			case 'session_ended': return 'Session ended';
			case 'you_left_the_meeting': return 'You left the meeting';
			case 'have_a_nice_day': return 'Have a nice day!';
			case 'left_by_mistake': return 'Left by mistake?';
			case 'ended_by_mistake': return 'Ended by mistake?';
			case 'rejoin': return 'Rejoin';
			case 'restart': return 'Restart';
			case 'anonymous': return 'Anonymous';
			case 'audio_output': return 'Audio Output';
			case 'auto': return 'Auto';
			case 'mute_audio': return 'Mute Audio';
			case 'enter_name': return 'Enter Name...';
			case 'change_name': return 'Change Name';
			case 'your_name_will_be_visible': return 'Your name will be visible to other participants in\n the session.';
			case 'remove_participant': return 'Remove Participant';
			case 'pin': return 'Pin';
			case 'unpin': return 'Unpin';
			case 'message_options': return 'Message Options';
			case 'unblock_from_chat': return 'Unblock from Chat';
			case 'block_from_chat': return 'Block from Chat';
			case 'hide_for_everyone': return 'Hide for Everyone';
			case 'copy_text': return 'Copy Text';
			case 'for_me': return 'for Me';
			case 'show': return 'Show';
			case 'hide': return 'Hide';
			case 'disable_for_everyone': return 'Disable For Everyone';
			case 'quality': return 'Quality';
			case 'session': return 'Session';
			case 'stream': return 'Stream';
			case 'end_stream': return 'End Stream';
			case 'end_session': return 'End Session';
			case 'this_stream_will_end': return 'The stream will end for everyone after they’ve watched it.';
			case 'this_session_will_end': return 'The session will end for everyone in the room immediately.';
			case 'minimize_tile': return 'Minimize Your Tile';
			case 'stop_screen_share': return 'Stop Screen Share';
			case 'audio_settings ': return 'Audio Settings';
			case 'mute_room': return 'Mute Room';
			case 'unmute_room': return 'Unmute Room';
			case 'start_recording': return 'Start Recording';
			case 'send_message_to': return 'Send message to';
			case 'everyone': return 'Everyone';
			case 'no_participant_yet': return 'No recipients yet';
			case 'direct_message': return 'DIRECT MESSAGE';
			case 'role_group': return 'ROLE GROUP';
			case 'view': return 'View';
			case 'view_all': return 'View All';
			case 'unmute': return 'Unmute';
			case 'video': return 'Video';
			case 'audio': return 'Audio';
			case 'remove_from_stage': return 'Remove from Stage';
			case 'bring_on_stage': return 'Bring on Stage';
			default: return null;
		}
	}
}
