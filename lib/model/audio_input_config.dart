import 'package:meta/meta.dart';

/// Instructs the speech recognizer how to process the audio content.
class InputAudioConfig {
  /// Audio encoding of the audio content to process. Use [AudioEncoding].
  final String audioEncoding;

  /// Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.
  final int sampleRateHertz;

  /// The language of the supplied audio. Dialogflow does not do translations. See [Language Support](https://cloud.google.com/dialogflow-enterprise/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  final String languageCode;

  /// If true, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.
  final bool enableWordInfo;

  /// The collection of phrase hints which are used to boost accuracy of speech recognition. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.
  final List<String> phraseHints;

  /// If false (default), recognition does not cease until the client closes the stream. If true, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods. Note: When specified, InputAudioConfig.single_utterance takes precedence over StreamingDetectIntentRequest.single_utterance.
  final bool singleUtterance;

  InputAudioConfig({
    @required this.audioEncoding,
    @required this.sampleRateHertz,
    @required this.languageCode,
    this.enableWordInfo,
    this.phraseHints,
    this.singleUtterance,
  });

  static InputAudioConfig fromJson(Map<String, dynamic> json) =>
      InputAudioConfig(
        audioEncoding: json['audioEncoding'],
        sampleRateHertz: json['sampleRateHertz'],
        languageCode: json['languageCode'],
        enableWordInfo: json['enableWordInfo'],
        phraseHints:
            json['phraseHints'] == null ? null : List.from(json['phraseHints']),
        singleUtterance: json['singleUtterance'],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'audioEncoding': audioEncoding,
        'sampleRateHertz': sampleRateHertz,
        'languageCode': languageCode,
        'enableWordInfo': enableWordInfo,
        'phraseHints': phraseHints,
        'singleUtterance': singleUtterance,
      };
}
