import 'dart:convert';
import 'dart:io';
import 'package:dialogflow_v2/dialogflow_v2.dart';
import 'package:meta/meta.dart';

class Dialogflow {
  final AuthGoogle authGoogle;
  final String language;

  String sessionId;

  // TODO check this
  Dialogflow({
    @required this.authGoogle,
    this.language='en',
  });

  String _getUrl() {
    return 'https://dialogflow.googleapis.com/v2/projects/${authGoogle.getProjectId}/agent/sessions/${authGoogle.getSessionId}:detectIntent';
  }

  Future<DetectIntentResponse> detectIntent(DetectIntentRequest params) async {
    var response = await authGoogle.post(
      _getUrl(),
      headers: {
        HttpHeaders.authorizationHeader: "Bearer ${authGoogle.getToken}"
      },
      body: json.encode(params.toJson()),
    );
    // printWrapped(response.body);
    return DetectIntentResponse.fromJson(json.decode(response.body));
  }

  Future<DetectIntentResponse> detectIntentFromText(
    String query,
    String languageCode,
  ) =>
      detectIntent(
        DetectIntentRequest(
          queryInput: QueryInput(
            text: TextInput(
              text: query,
              languageCode: languageCode,
            ),
          ),
        ),
      );

  void printWrapped(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
