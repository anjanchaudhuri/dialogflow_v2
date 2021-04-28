import 'package:dialogflow_v2/dialogflow_v2.dart';
import 'package:dialogflow_v2/model/output_audio_config.dart';

/// If successful, the response body contains data with this structure.
class DetectIntentResponse {
  /// The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues.
  final String responseId;

  /// The selected results of the conversational query or event processing. See alternativeQueryResults for additional potential results.
  final QueryResult queryResult;

  /// Specifies the status of the webhook request.
  final Status webhookStatus;

  /// Output audio bytes encoded in base64. A base64 encoded string.
  final String outputAudio;

  final OutputAudioConfig outputAudioConfig;

  DetectIntentResponse({
    this.responseId,
    this.queryResult,
    this.webhookStatus,
    this.outputAudio,
    this.outputAudioConfig,
  });

  static DetectIntentResponse fromJson(Map<String, dynamic> json) =>
      DetectIntentResponse(
        queryResult: json['queryResult'] == null
            ? null
            : QueryResult.fromJson(json['queryResult']),
        responseId: json['responseId'],
        webhookStatus: json['webhookStatus'] == null
            ? null
            : Status.fromJson(json['webhookStatus']),
        outputAudio: json['outputAudio'],
        outputAudioConfig: json['outputAudioConfig'] == null
            ? null
            : OutputAudioConfig.fromJson(json['outputAudioConfig']),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'responseId': responseId,
        'queryResult': queryResult == null ? null : queryResult.toJson(),
        'webhookStatus': webhookStatus == null ? null : webhookStatus.toJson(),
        'outputAudio': outputAudio,
        'outputAudioConfig':
            outputAudioConfig == null ? null : outputAudioConfig.toJson(),
      };

  List<Message> getListMessage() {
    return this.queryResult.fulfillmentMessages;
  }

  String getMessage() {
    return this.queryResult.fulfillmentText;
  }
}
