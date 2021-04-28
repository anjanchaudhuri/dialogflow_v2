/// Audio encoding of the output audio format in Text-To-Speech. Refer to the [Dialogflow V2 REST API documentation](https://cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.environments#Environment.OutputAudioEncoding) for more details.
class OutputAudioEncoding {
  /// Not specified.
  static const String unspecified = 'OUTPUT_AUDIO_ENCODING_UNSPECIFIED';

  /// Uncompressed 16-bit signed little-endian samples (Linear PCM).
  static const String linear16 = 'OUTPUT_AUDIO_ENCODING_LINEAR_16';

  /// Output audio format MP3 audio at 32kbps
  static const String mp3_32kbps = 'OUTPUT_AUDIO_ENCODING_MP3';

  /// Output audio format MP3 audio at 64kbps
  static const String mp3_64kbps = 'OUTPUT_AUDIO_ENCODING_MP3_64_KBPS';

  /// 8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law.
  static const String mulaw = 'OUTPUT_AUDIO_ENCODING_MULAW';

  /// Opus encoded audio frames in Ogg container (OggOpus). sampleRateHertz must be 16000.
  static const String oggOpus = 'OUTPUT_AUDIO_ENCODING_OGG_OPUS';
}
