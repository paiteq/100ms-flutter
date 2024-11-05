/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 339 (169 per locale)
///
/// Built on 2024-11-05 at 08:10 UTC

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
	String get let_get_started => 'Get started';
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
	String get participants => ' Deelnemers';
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
	String get mute_sound => 'Mute Audio';
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
	String get on => 'On';
	String get off => 'Off';
	String get microphone => 'Microphone';
	String get camera => 'Camera';
	String get leave_session => 'Leave Session';
	String get leave_stream => 'Leave Stream';
	String get poor_connection => 'Poor connection';
	String get the_video_will_resume_automatically => 'The video will resume automatically when the connection improves';
	String track_change_message({required Object name, required Object service_status, required Object service}) => '\'${name}\' requested to ${service_status} your \'${service}\'';
	String other_in_session({required Object count}) => '${count} other in session';
	String others_in_session({required Object count}) => '${count} others in session';
	String get single_choice => 'Single Choice';
	String get multiple_choice => 'Multiple Choice';
	String get name_of_quiz => 'Quiz Name';
	String get name_of_poll => 'Poll Name';
	String get name_this_quiz => 'Name this Quiz';
	String get name_this_poll => 'Name this Poll';
	String get create_quiz => 'Create Quiz';
	String get create_poll => 'Create Poll';
	String get select_the_type_you_want_to_continue_with => 'Select the type you want to continue with';
	String get start_a_conversation => 'Start a conversation';
	String get there_are_no_messages_here_yet => 'There are no messages here yet.\nStart a conversation by sending a message.';
	String get to => 'To';
	String get you => 'You';
	String get option => 'Option';
	String get question_cap => 'QUESTION';
	String get of_cap => 'OF';
	String get who_will_win_the_match => 'e.g. Who will win the match?';
	String get add_another_question => 'Add another question';
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
	@override String get join_now => 'Deelnemen';
	@override String get let_get_started => 'Aan de slag!';
	@override String get dont_leave => 'Ga niet weg';
	@override String get leave => 'Vertrekken';
	@override String get ok => 'OK';
	@override String get cancel => 'annuleren';
	@override String get recording => 'opname';
	@override String get single_file => 'Eén bestand per laag';
	@override String get view_on_demand => 'Video-op-aanvraag';
	@override String get select_role_for_mute => 'Selecteer Rol voor dempen';
	@override String get mute_all => 'Demp alles';
	@override String get mute => 'Stom';
	@override String get select_role_for_change_role => 'Selecteer rollen om de rol te wijzigen';
	@override String get change_role_to => 'Verander rollen naar';
	@override String get please_select_a_role => 'Selecteer een rol';
	@override String get change_role => 'rol veranderen';
	@override String get end_room => 'Eindkamer';
	@override String get others_can_contine_after_you_leave => 'Anderen zullen doorgaan nadat je vertrekt. Je kunt de sessie opnieuw betreden.';
	@override String get about_session => 'Over sessie';
	@override String get live => 'Live';
	@override String get go_live => 'ga live';
	@override String get stream_yet_to_start => 'Stream moet nog beginnen';
	@override String get sit_back_and_relax => 'Even geduld';
	@override String get you_are_first_to_join => 'Jij bent de eerste die deelneemt';
	@override String get sit_back_and_relax_till_others_join => 'Even geduld totdat anderen deelnemen';
	@override String get ready_to_present => 'Klaar om te presenteren';
	@override String get select_screenshare_button => 'Selecteer de schermdeelknop \nin het menu om te beginnen met presenteren.';
	@override String get waiting_for_host_to_join => 'Wachten op de host';
	@override String get setup_audio_before_joining => 'Stel je microfoon en camera in voordat je deelneemt';
	@override String get enable_permissions => 'Machtigingen inschakelen';
	@override String get few_things_before_joining => 'Nog even een paar dingen voordat je lid wordt';
	@override String get grant_permissions => 'Verleen machtigingen';
	@override String get decline => 'Afwijzen';
	@override String get you_are_invited_to_join_stage => 'Je wordt uitgenodigd om op het podium te komen';
	@override String get change_audio_device => 'Wijzig het audioapparaat';
	@override String get change_audio_mode => 'Wijzig de audiomodus';
	@override String get request_permission_from_user => 'Vraag toestemming aan de gebruiker';
	@override String get change_streaming_quality => 'Wijzig de streamingkwaliteit';
	@override String get change_aspect_ratio => 'Wijzig de beeldverhouding';
	@override String get change => 'wijziging';
	@override String get reject => 'Afwijzen';
	@override String get accept => 'Accepteren';
	@override String get requested_to_change_your_role => 'gevraagd om uw rol te wijzigen in';
	@override String get options => 'Opties';
	@override String get participants => 'Deelnemers';
	@override String get sharing_screen => 'Scherm delen';
	@override String get share_screen => 'Deel scherm';
	@override String get iam_back => 'Ik ben terug';
	@override String get be_right_back => 'Ben zo terug';
	@override String get lower_hand => 'Onder hand';
	@override String get raise_hand => 'Hand opsteken';
	@override String get polls_and_quizes => 'Peilingen en quizzen';
	@override String get record => 'Opnemen';
	@override String get stop_recording => 'Stop opname';
	@override String get are_you_sure_stop_recording => 'Weet je zeker dat je de opname wilt stoppen? Deze actie kan niet ongedaan worden gemaakt.';
	@override String get recording_paused => 'Opname onderbroken';
	@override String get noise_reduced => 'Ruis verminderd';
	@override String get reduce_noise => 'Verminder ruis';
	@override String get close_whiteboard => 'Sluit het whiteboard';
	@override String get open_whiteboard => 'Whiteboard openen';
	@override String get closed_captions => 'Gesloten ondertiteling';
	@override String get hide_captions => 'Onderschriften verbergen';
	@override String get show_Captions => 'toon ondertitels';
	@override String get enable_for_everyone => 'Inschakelen voor iedereen';
	@override String get this_will_enable_close_captions => 'Hierdoor wordt ondertiteling ingeschakeld voor iedereen in deze ruimte. Je kunt het later uitschakelen.';
	@override String get this_will_disable_close_captions => 'Hierdoor wordt de ondertiteling uitgeschakeld voor iedereen in deze ruimte. U kunt het opnieuw inschakelen.';
	@override String get enable_close_captions => 'Ondertiteling (CC) inschakelen voor deze sessie?';
	@override String get chat => 'Chatten';
	@override String get pause_chat => 'Chat pauzeren';
	@override String get resume_chat => 'Chat hervatten';
	@override String get vote => 'Stemmen';
	@override String get answer => 'Antwoord';
	@override String get voted => 'Gestemd';
	@override String get answered => 'Beantwoord';
	@override String get your_answer => 'Jouw antwoord';
	@override String get question_type => 'Vraagtype';
	@override String get question => 'Vraag';
	@override String get select_radio_button => 'Selecteer een van de keuzerondjes om het juiste antwoord te markeren';
	@override String get add_an_option => 'Voeg een optie toe';
	@override String get point_weightage => 'Puntgewicht';
	@override String get save => 'redden';
	@override String get edit => 'bewerking';
	@override String get poll => 'Peiling';
	@override String get quiz => 'Quiz';
	@override String get create => 'creëren';
	@override String get hide_vote_count => 'Stemmen verbergen';
	@override String get settings => 'Instellingen';
	@override String get you_left_the_stream => 'Je hebt de stroom verlaten';
	@override String get session_ended => 'Sessie beëindigd';
	@override String get you_left_the_meeting => 'Je verliet de vergadering';
	@override String get have_a_nice_day => 'Fijne dag!';
	@override String get left_by_mistake => 'Per ongeluk achtergelaten?';
	@override String get ended_by_mistake => 'Per ongeluk beëindigd?';
	@override String get rejoin => 'Opnieuw deelnemen';
	@override String get restart => 'Herstarten';
	@override String get anonymous => 'Anoniem';
	@override String get audio_output => 'Audio-uitvoer';
	@override String get auto => 'Automatisch';
	@override String get mute_sound => 'Geluid dempen';
	@override String get mute_audio => 'Microfoon uit';
	@override String get enter_name => 'Naam invoeren...';
	@override String get change_name => 'Naam wijzigen';
	@override String get your_name_will_be_visible => 'Uw naam zal zichtbaar zijn voor andere deelnemers aan\n de sessie.';
	@override String get remove_participant => 'Deelnemer verwijderen';
	@override String get pin => 'Vastzetten';
	@override String get unpin => 'losmaken';
	@override String get message_options => 'Berichtopties';
	@override String get unblock_from_chat => 'Deblokkeren uit Chat';
	@override String get block_from_chat => 'Blokkeren uit chat';
	@override String get hide_for_everyone => 'Voor iedereen verbergen';
	@override String get copy_text => 'Tekst kopiëren';
	@override String get for_me => 'voor mij';
	@override String get show => 'Show';
	@override String get hide => 'verbergen';
	@override String get disable_for_everyone => 'Uitschakelen voor iedereen';
	@override String get quality => 'Kwaliteit';
	@override String get session => 'Sessie';
	@override String get stream => 'stroom';
	@override String get end_stream => 'Einde stroom';
	@override String get end_session => 'Einde sessie';
	@override String get this_stream_will_end => 'De stream stopt voor iedereen nadat ze deze hebben bekeken.';
	@override String get this_session_will_end => 'De sessie eindigt onmiddellijk voor iedereen in de kamer.';
	@override String get minimize_tile => 'Mij verbergen';
	@override String get stop_screen_share => 'Scherm delen stoppen';
	@override String get audio_settings => 'Audio-instellingen';
	@override String get mute_room => 'Mute kamer';
	@override String get unmute_room => 'Dempen van kamer opheffen';
	@override String get start_recording => 'Begin met opnemen';
	@override String get send_message_to => 'Stuur bericht naar';
	@override String get everyone => 'Iedereen';
	@override String get no_participant_yet => 'Nog geen ontvangers';
	@override String get direct_message => 'DIRECT BERICHT';
	@override String get role_group => 'ROLGROEP';
	@override String get view => 'Weergave';
	@override String get view_all => 'Bekijk alles';
	@override String get unmute => 'Dempen opheffen';
	@override String get video => 'Video';
	@override String get audio => 'Geluid';
	@override String get remove_from_stage => 'Verwijderen uit het podium';
	@override String get bring_on_stage => 'Op het podium zetten';
	@override String get on => 'aan';
	@override String get off => 'uit';
	@override String get microphone => 'Microfoon';
	@override String get camera => 'Camera';
	@override String get leave_session => 'Sessie verlaten';
	@override String get leave_stream => 'Stroom verlaten';
	@override String get poor_connection => 'Slechte verbinding';
	@override String get the_video_will_resume_automatically => ' De video wordt automatisch hervat wanneer de verbinding verbetert';
	@override String get requested_to => 'heeft verzocht om';
	@override String track_change_message({required Object name, required Object service, required Object service_status}) => '\'${name}\' heeft verzocht om je \'${service}\' ${service_status} te zetten';
	@override String other_in_session({required Object count}) => '${count} ander in de sessie';
	@override String others_in_session({required Object count}) => '${count} anderen in de sessie';
	@override String get single_choice => 'Enkele keuze';
	@override String get multiple_choice => 'Meerkeuze';
	@override String get name_of_quiz => 'Naam van de quiz';
	@override String get name_of_poll => 'Naam van de peiling';
	@override String get name_this_quiz => 'Geef deze quiz een naam';
	@override String get name_this_poll => 'Geef deze peiling een naam';
	@override String get create_quiz => 'Quiz aanmaken';
	@override String get create_poll => 'Peiling aanmaken';
	@override String get select_the_type_you_want_to_continue_with => 'Selecteer het type waarmee je wilt doorgaan';
	@override String get start_a_conversation => 'Begin een gesprek';
	@override String get there_are_no_messages_here_yet => 'Er zijn hier nog geen berichten.\nBegin een gesprek door een bericht te sturen.';
	@override String get to => 'Naar';
	@override String get you => 'Jij';
	@override String get option => 'Optie';
	@override String get question_cap => 'VRAAG';
	@override String get of_cap => 'VAN';
	@override String get who_will_win_the_match => 'Bijvoorbeeld: Wie wint de wedstrijd?';
	@override String get add_another_question => 'Voeg nog een vraag toe';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'join_now': return 'Join now';
			case 'let_get_started': return 'Get started';
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
			case 'participants': return ' Deelnemers';
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
			case 'mute_sound': return 'Mute Audio';
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
			case 'on': return 'On';
			case 'off': return 'Off';
			case 'microphone': return 'Microphone';
			case 'camera': return 'Camera';
			case 'leave_session': return 'Leave Session';
			case 'leave_stream': return 'Leave Stream';
			case 'poor_connection': return 'Poor connection';
			case 'the_video_will_resume_automatically': return 'The video will resume automatically when the connection improves';
			case 'track_change_message': return ({required Object name, required Object service_status, required Object service}) => '\'${name}\' requested to ${service_status} your \'${service}\'';
			case 'other_in_session': return ({required Object count}) => '${count} other in session';
			case 'others_in_session': return ({required Object count}) => '${count} others in session';
			case 'single_choice': return 'Single Choice';
			case 'multiple_choice': return 'Multiple Choice';
			case 'name_of_quiz': return 'Quiz Name';
			case 'name_of_poll': return 'Poll Name';
			case 'name_this_quiz': return 'Name this Quiz';
			case 'name_this_poll': return 'Name this Poll';
			case 'create_quiz': return 'Create Quiz';
			case 'create_poll': return 'Create Poll';
			case 'select_the_type_you_want_to_continue_with': return 'Select the type you want to continue with';
			case 'start_a_conversation': return 'Start a conversation';
			case 'there_are_no_messages_here_yet': return 'There are no messages here yet.\nStart a conversation by sending a message.';
			case 'to': return 'To';
			case 'you': return 'You';
			case 'option': return 'Option';
			case 'question_cap': return 'QUESTION';
			case 'of_cap': return 'OF';
			case 'who_will_win_the_match': return 'e.g. Who will win the match?';
			case 'add_another_question': return 'Add another question';
			default: return null;
		}
	}
}

extension on _StringsNl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'join_now': return 'Deelnemen';
			case 'let_get_started': return 'Aan de slag!';
			case 'dont_leave': return 'Ga niet weg';
			case 'leave': return 'Vertrekken';
			case 'ok': return 'OK';
			case 'cancel': return 'annuleren';
			case 'recording': return 'opname';
			case 'single_file': return 'Eén bestand per laag';
			case 'view_on_demand': return 'Video-op-aanvraag';
			case 'select_role_for_mute': return 'Selecteer Rol voor dempen';
			case 'mute_all': return 'Demp alles';
			case 'mute': return 'Stom';
			case 'select_role_for_change_role': return 'Selecteer rollen om de rol te wijzigen';
			case 'change_role_to': return 'Verander rollen naar';
			case 'please_select_a_role': return 'Selecteer een rol';
			case 'change_role': return 'rol veranderen';
			case 'end_room': return 'Eindkamer';
			case 'others_can_contine_after_you_leave': return 'Anderen zullen doorgaan nadat je vertrekt. Je kunt de sessie opnieuw betreden.';
			case 'about_session': return 'Over sessie';
			case 'live': return 'Live';
			case 'go_live': return 'ga live';
			case 'stream_yet_to_start': return 'Stream moet nog beginnen';
			case 'sit_back_and_relax': return 'Even geduld';
			case 'you_are_first_to_join': return 'Jij bent de eerste die deelneemt';
			case 'sit_back_and_relax_till_others_join': return 'Even geduld totdat anderen deelnemen';
			case 'ready_to_present': return 'Klaar om te presenteren';
			case 'select_screenshare_button': return 'Selecteer de schermdeelknop \nin het menu om te beginnen met presenteren.';
			case 'waiting_for_host_to_join': return 'Wachten op de host';
			case 'setup_audio_before_joining': return 'Stel je microfoon en camera in voordat je deelneemt';
			case 'enable_permissions': return 'Machtigingen inschakelen';
			case 'few_things_before_joining': return 'Nog even een paar dingen voordat je lid wordt';
			case 'grant_permissions': return 'Verleen machtigingen';
			case 'decline': return 'Afwijzen';
			case 'you_are_invited_to_join_stage': return 'Je wordt uitgenodigd om op het podium te komen';
			case 'change_audio_device': return 'Wijzig het audioapparaat';
			case 'change_audio_mode': return 'Wijzig de audiomodus';
			case 'request_permission_from_user': return 'Vraag toestemming aan de gebruiker';
			case 'change_streaming_quality': return 'Wijzig de streamingkwaliteit';
			case 'change_aspect_ratio': return 'Wijzig de beeldverhouding';
			case 'change': return 'wijziging';
			case 'reject': return 'Afwijzen';
			case 'accept': return 'Accepteren';
			case 'requested_to_change_your_role': return 'gevraagd om uw rol te wijzigen in';
			case 'options': return 'Opties';
			case 'participants': return 'Deelnemers';
			case 'sharing_screen': return 'Scherm delen';
			case 'share_screen': return 'Deel scherm';
			case 'iam_back': return 'Ik ben terug';
			case 'be_right_back': return 'Ben zo terug';
			case 'lower_hand': return 'Onder hand';
			case 'raise_hand': return 'Hand opsteken';
			case 'polls_and_quizes': return 'Peilingen en quizzen';
			case 'record': return 'Opnemen';
			case 'stop_recording': return 'Stop opname';
			case 'are_you_sure_stop_recording': return 'Weet je zeker dat je de opname wilt stoppen? Deze actie kan niet ongedaan worden gemaakt.';
			case 'recording_paused': return 'Opname onderbroken';
			case 'noise_reduced': return 'Ruis verminderd';
			case 'reduce_noise': return 'Verminder ruis';
			case 'close_whiteboard': return 'Sluit het whiteboard';
			case 'open_whiteboard': return 'Whiteboard openen';
			case 'closed_captions': return 'Gesloten ondertiteling';
			case 'hide_captions': return 'Onderschriften verbergen';
			case 'show_Captions': return 'toon ondertitels';
			case 'enable_for_everyone': return 'Inschakelen voor iedereen';
			case 'this_will_enable_close_captions': return 'Hierdoor wordt ondertiteling ingeschakeld voor iedereen in deze ruimte. Je kunt het later uitschakelen.';
			case 'this_will_disable_close_captions': return 'Hierdoor wordt de ondertiteling uitgeschakeld voor iedereen in deze ruimte. U kunt het opnieuw inschakelen.';
			case 'enable_close_captions': return 'Ondertiteling (CC) inschakelen voor deze sessie?';
			case 'chat': return 'Chatten';
			case 'pause_chat': return 'Chat pauzeren';
			case 'resume_chat': return 'Chat hervatten';
			case 'vote': return 'Stemmen';
			case 'answer': return 'Antwoord';
			case 'voted': return 'Gestemd';
			case 'answered': return 'Beantwoord';
			case 'your_answer': return 'Jouw antwoord';
			case 'question_type': return 'Vraagtype';
			case 'question': return 'Vraag';
			case 'select_radio_button': return 'Selecteer een van de keuzerondjes om het juiste antwoord te markeren';
			case 'add_an_option': return 'Voeg een optie toe';
			case 'point_weightage': return 'Puntgewicht';
			case 'save': return 'redden';
			case 'edit': return 'bewerking';
			case 'poll': return 'Peiling';
			case 'quiz': return 'Quiz';
			case 'create': return 'creëren';
			case 'hide_vote_count': return 'Stemmen verbergen';
			case 'settings': return 'Instellingen';
			case 'you_left_the_stream': return 'Je hebt de stroom verlaten';
			case 'session_ended': return 'Sessie beëindigd';
			case 'you_left_the_meeting': return 'Je verliet de vergadering';
			case 'have_a_nice_day': return 'Fijne dag!';
			case 'left_by_mistake': return 'Per ongeluk achtergelaten?';
			case 'ended_by_mistake': return 'Per ongeluk beëindigd?';
			case 'rejoin': return 'Opnieuw deelnemen';
			case 'restart': return 'Herstarten';
			case 'anonymous': return 'Anoniem';
			case 'audio_output': return 'Audio-uitvoer';
			case 'auto': return 'Automatisch';
			case 'mute_sound': return 'Geluid dempen';
			case 'mute_audio': return 'Microfoon uit';
			case 'enter_name': return 'Naam invoeren...';
			case 'change_name': return 'Naam wijzigen';
			case 'your_name_will_be_visible': return 'Uw naam zal zichtbaar zijn voor andere deelnemers aan\n de sessie.';
			case 'remove_participant': return 'Deelnemer verwijderen';
			case 'pin': return 'Vastzetten';
			case 'unpin': return 'losmaken';
			case 'message_options': return 'Berichtopties';
			case 'unblock_from_chat': return 'Deblokkeren uit Chat';
			case 'block_from_chat': return 'Blokkeren uit chat';
			case 'hide_for_everyone': return 'Voor iedereen verbergen';
			case 'copy_text': return 'Tekst kopiëren';
			case 'for_me': return 'voor mij';
			case 'show': return 'Show';
			case 'hide': return 'verbergen';
			case 'disable_for_everyone': return 'Uitschakelen voor iedereen';
			case 'quality': return 'Kwaliteit';
			case 'session': return 'Sessie';
			case 'stream': return 'stroom';
			case 'end_stream': return 'Einde stroom';
			case 'end_session': return 'Einde sessie';
			case 'this_stream_will_end': return 'De stream stopt voor iedereen nadat ze deze hebben bekeken.';
			case 'this_session_will_end': return 'De sessie eindigt onmiddellijk voor iedereen in de kamer.';
			case 'minimize_tile': return 'Mij verbergen';
			case 'stop_screen_share': return 'Scherm delen stoppen';
			case 'audio_settings': return 'Audio-instellingen';
			case 'mute_room': return 'Mute kamer';
			case 'unmute_room': return 'Dempen van kamer opheffen';
			case 'start_recording': return 'Begin met opnemen';
			case 'send_message_to': return 'Stuur bericht naar';
			case 'everyone': return 'Iedereen';
			case 'no_participant_yet': return 'Nog geen ontvangers';
			case 'direct_message': return 'DIRECT BERICHT';
			case 'role_group': return 'ROLGROEP';
			case 'view': return 'Weergave';
			case 'view_all': return 'Bekijk alles';
			case 'unmute': return 'Dempen opheffen';
			case 'video': return 'Video';
			case 'audio': return 'Geluid';
			case 'remove_from_stage': return 'Verwijderen uit het podium';
			case 'bring_on_stage': return 'Op het podium zetten';
			case 'on': return 'aan';
			case 'off': return 'uit';
			case 'microphone': return 'Microfoon';
			case 'camera': return 'Camera';
			case 'leave_session': return 'Sessie verlaten';
			case 'leave_stream': return 'Stroom verlaten';
			case 'poor_connection': return 'Slechte verbinding';
			case 'the_video_will_resume_automatically': return ' De video wordt automatisch hervat wanneer de verbinding verbetert';
			case 'requested_to': return 'heeft verzocht om';
			case 'track_change_message': return ({required Object name, required Object service, required Object service_status}) => '\'${name}\' heeft verzocht om je \'${service}\' ${service_status} te zetten';
			case 'other_in_session': return ({required Object count}) => '${count} ander in de sessie';
			case 'others_in_session': return ({required Object count}) => '${count} anderen in de sessie';
			case 'single_choice': return 'Enkele keuze';
			case 'multiple_choice': return 'Meerkeuze';
			case 'name_of_quiz': return 'Naam van de quiz';
			case 'name_of_poll': return 'Naam van de peiling';
			case 'name_this_quiz': return 'Geef deze quiz een naam';
			case 'name_this_poll': return 'Geef deze peiling een naam';
			case 'create_quiz': return 'Quiz aanmaken';
			case 'create_poll': return 'Peiling aanmaken';
			case 'select_the_type_you_want_to_continue_with': return 'Selecteer het type waarmee je wilt doorgaan';
			case 'start_a_conversation': return 'Begin een gesprek';
			case 'there_are_no_messages_here_yet': return 'Er zijn hier nog geen berichten.\nBegin een gesprek door een bericht te sturen.';
			case 'to': return 'Naar';
			case 'you': return 'Jij';
			case 'option': return 'Optie';
			case 'question_cap': return 'VRAAG';
			case 'of_cap': return 'VAN';
			case 'who_will_win_the_match': return 'Bijvoorbeeld: Wie wint de wedstrijd?';
			case 'add_another_question': return 'Voeg nog een vraag toe';
			default: return null;
		}
	}
}
