import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/cupertino.dart';

class AudioService {
  AudioService._();

  static loadBgm() {
    if (FlameAudio.bgm.isPlaying) {
      FlameAudio.bgm.resume();
    } else {
      FlameAudio.bgm.play("loop.mp3");
    }
  }

  static stopAll() async {
    try {
      await FlameAudio.bgm.pause();
      await FlameAudio.bgm.audioPlayer.stop();
      await FlameAudio.bgm.stop();
    } catch (e) {
      print('object error $e');
    }
  }

  static press() {
    // FlameAudio.play('file');
  }
}
