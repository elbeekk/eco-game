import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/cupertino.dart';

class AudioService {
  AudioService._();

  static loadBgm() {
    FlameAudio.bgm.play("loop.mp3");
  }


  static stopBgm() async {
    await FlameAudio.bgm.stop();
  }

  static press() {
    // FlameAudio.play('file');
  }
}
