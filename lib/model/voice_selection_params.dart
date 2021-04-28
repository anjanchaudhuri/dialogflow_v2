import 'package:dialogflow_v2/model/ssml_voice_gender.dart';

/// Description of which voice to use for speech synthesis.
class VoiceSelectionParams {
  /// Optional. The name of the voice. If not set, the service will choose
  /// a voice based on the other parameters such as languageCode and ssmlGender.
  final String name;

  /// Optional. The preferred gender of the voice. If not set, the service will
  /// choose a voice based on the other parameters such as languageCode and name
  final SsmlVoiceGender ssmlGender;

  VoiceSelectionParams({this.name, this.ssmlGender});

  static VoiceSelectionParams fromJson(Map<String, dynamic> json) =>
      VoiceSelectionParams(
        name: json['name'],
        ssmlGender: json['ssmlGender'],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'ssmlGender': ssmlGender,
      };
}
