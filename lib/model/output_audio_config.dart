import 'package:dialogflow_v2/model/output_audio_encoding.dart';
import 'package:dialogflow_v2/model/synthesize_speech_config.dart';
import 'package:flutter/cupertino.dart';

/// This class abstracts the output audio config as defined in the Google
/// Dialogflow V2 REST API documentation.
class OutputAudioConfig {
  /// Required. Audio encoding of the synthesized audio content.
  final OutputAudioEncoding audioEncoding;

  /// The synthesis sample rate (in hertz) for this audio
  final int sampleRateHertz;

  /// Configuration of how speech should be synthesized.
  final SynthesizeSpeechConfig synthesizeSpeechConfig;

  /// Constructor
  OutputAudioConfig(
      {@required this.audioEncoding,
      this.sampleRateHertz,
      this.synthesizeSpeechConfig});

  /// Factory method to parse JSON
  static OutputAudioConfig fromJson(Map<String, dynamic> json) =>
      OutputAudioConfig(
        audioEncoding: json['audioEncoding'],
        sampleRateHertz: json['sampleRateHertz'],
        synthesizeSpeechConfig: json['synthesizeSpeechConfig'] == null
            ? null
            : SynthesizeSpeechConfig.fromJson(json['synthesizeSpeechConfig']),
      );

  Map<String, dynamic> toJson() => {
        'audioEncoding': audioEncoding,
        'sampleRateHertz': sampleRateHertz,
        'synthesizeSpeechConfig': synthesizeSpeechConfig == null
            ? null
            : synthesizeSpeechConfig.toJson(),
      };
}
