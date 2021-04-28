import 'package:dialogflow_v2/model/voice_selection_params.dart';
import 'package:flutter/material.dart';

/// Configuration of how speech should be synthesized.
class SynthesizeSpeechConfig {
  /// Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the
  /// normal native speed supported by the specific voice. 2.0 is twice as
  /// fast, and 0.5 is half as fast. If unset(0.0), defaults to the native
  /// 1.0 speed. Any other values < 0.25 or > 4.0 will return an error
  final double speakingRate;

  /// Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means
  /// increase 20 semitones from the original pitch. -20 means decrease
  /// 20 semitones from the original pitch.
  final double pitch;

  /// Optional. Volume gain (in dB) of the normal native volume supported
  /// by the specific voice, in the range [-96.0, 16.0]. If unset, or set
  /// to a value of 0.0 (dB), will play at normal native signal amplitude.
  /// A value of -6.0 (dB) will play at approximately half the amplitude
  /// of the normal native signal amplitude. A value of +6.0 (dB) will
  /// play at approximately twice the amplitude of the normal native signal
  /// amplitude. We strongly recommend not to exceed +10 (dB) as there's
  /// usually no effective increase in loudness for any value greater than that.
  final double volumeGainDb;

  /// Optional. An identifier which selects 'audio effects' profiles that
  /// are applied on (post synthesized) text to speech. Effects are applied
  /// on top of each other in the order they are given.
  final List<String> effectsProfileId;

  /// Optional. The desired voice of the synthesized audio.
  final VoiceSelectionParams voice;

  SynthesizeSpeechConfig({
    this.speakingRate,
    this.pitch,
    this.volumeGainDb,
    this.effectsProfileId,
    this.voice,
  });

  static SynthesizeSpeechConfig fromJson(Map<String, dynamic> json) =>
      SynthesizeSpeechConfig(
        speakingRate: json['speakingRate'],
        pitch: json['pitch'],
        volumeGainDb: json['volumeGainDb'],
        effectsProfileId: json['effectsProfileId'] == null
            ? null
            : List.from(json['effectsProfileId']),
        voice: json['voice'] == null
            ? null
            : VoiceSelectionParams.fromJson(json['voice']),
      );

  Map<String, dynamic> toJson() => {
        'speakingRate': speakingRate,
        'pitch': pitch,
        'volumeGainDb': volumeGainDb,
        'effectsProfileId': effectsProfileId,
        'voice': voice == null ? null : voice.toJson(),
      };
}
