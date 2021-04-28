/// Gender of the voice as described in SSML voice element. For more details,
/// See https://cloud.google.com/dialogflow/es/docs/reference/rest/v2/OutputAudioConfig#SsmlVoiceGender
class SsmlVoiceGender {
  /// An unspecified gender, which means that the client doesn't care which gender the selected voice will have.
  static const String ssml_voice_gender_unspecified = 'SSML_VOICE_GENDER_UNSPECIFIED';

  /// A male voice.
  static const String ssml_voice_gender_male = 'SSML_VOICE_GENDER_MALE';

  /// A female voice.
  static const String ssml_voice_gender_female = 'SSML_VOICE_GENDER_FEMALE';

  /// A gender-neutral voice.
  static const String ssml_voice_gender_neutral = 'SSML_VOICE_GENDER_NEUTRAL';
}