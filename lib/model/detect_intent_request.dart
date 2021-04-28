import 'package:dialogflow_v2/model/output_audio_config.dart';
import 'package:meta/meta.dart';
import 'package:dialogflow_v2/dialogflow_v2.dart';

class DetectIntentRequest {
  /// The parameters of this query.
  final QueryParameters queryParams;

  /// The input specification. It can be set to:
  /// 1.  an audio config which instructs the speech recognizer how to
  /// process the speech audio,
  /// 2.  a conversational query in the form of text, or
  /// 3.  an event that specifies which intent to trigger.
  final QueryInput queryInput;

  /// Instructs the speech synthesizer how to generate the output audio.
  /// If this field is not set and agent-level speech synthesizer is not
  /// configured, no output audio is generated
  final OutputAudioConfig outputAudioConfig;

  /// String in FieldMask format. See
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.FieldMask
  ///
  /// Mask for outputAudioConfig indicating which settings in this
  /// request-level config should override speech synthesizer settings
  /// defined at agent-level.
  ///
  /// If unspecified or empty, outputAudioConfig replaces the agent-level
  /// config in its entirety.
  ///
  /// This is a comma-separated list of fully qualified names of fields.
  /// Example: "user.displayName,photo".
  final String outputAudioConfigMask;

  /// The natural language speech audio to be processed. This field should be
  /// populated iff queryInput is set to an input audio config. A single
  /// request can contain up to 1 minute of speech audio data.
  /// A base64-encoded string.
  final String inputAudio;

  DetectIntentRequest({
    @required this.queryInput,
    this.queryParams,
    this.outputAudioConfig,
    this.outputAudioConfigMask,
    this.inputAudio,
  });

  static DetectIntentRequest fromJson(Map<String, dynamic> json) =>
      DetectIntentRequest(
        queryParams: json['queryParams'] == null
            ? null
            : QueryParameters.fromJson(json['queryParams']),
        queryInput: json['queryInput'] == null
            ? null
            : QueryInput.fromJson(json['queryInput']),
        outputAudioConfig: json['outputAudioConfig'] == null
            ? null
            : OutputAudioConfig.fromJson(json['outputAudioConfig']),
        outputAudioConfigMask: json['outputAudioConfigMask'],
        inputAudio: json['inputAudio'],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'queryParams': queryParams == null ? null : queryParams.toJson(),
        'queryInput': queryInput == null ? null : queryInput.toJson(),
        'outputAudioConfig':
            outputAudioConfig == null ? null : outputAudioConfig.toJson(),
        'outputAudioConfigMask': outputAudioConfigMask,
        'inputAudio': inputAudio,
      };
}
