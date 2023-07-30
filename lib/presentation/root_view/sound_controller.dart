import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class SoundController extends GetxController {
  final AssetsAudioPlayer launchSoundPlayer = AssetsAudioPlayer.newPlayer();
  final AssetsAudioPlayer clickSoundPlayer = AssetsAudioPlayer.newPlayer();
  final Audio launchSoundtrack = Audio('assets/sounds/themes/home_theme.mp3');
  final Audio clickSound = Audio('assets/sounds/sound_effects/click.mp3');

  @override
  void onInit() {
    super.onInit();
    preloadLaunchSoundtrack();
  }

  @override
  void onClose() {
    launchSoundPlayer.dispose();
    clickSoundPlayer.dispose();
    super.onClose();
  }

  void preloadLaunchSoundtrack() {
    launchSoundPlayer.open(
      launchSoundtrack,
      autoStart: false,
      showNotification: false,
    );
  }

  void preloadClickSound() {
    clickSoundPlayer.open(
      clickSound,
      autoStart: false,
      showNotification: false,
    );
  }

  void playClickSound() {
    clickSoundPlayer.play();
  }

  void playLaunchSoundtrack() {
    launchSoundPlayer.play();
  }
}
