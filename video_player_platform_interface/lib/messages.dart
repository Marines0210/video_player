// Autogenerated from Pigeon (v0.1.0-experimental.11), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
import 'dart:async';
import 'package:flutter/services.dart';

class TextureMessage {
  int textureId;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    return pigeonMap;
  }

  // ignore: unused_element
  static TextureMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final TextureMessage result = TextureMessage();
    result.textureId = pigeonMap['textureId'];
    return result;
  }
}

class CreateMessage {
  String asset;
  String uri;
  String packageName;
  String formatHint;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['asset'] = asset;
    pigeonMap['uri'] = uri;
    pigeonMap['packageName'] = packageName;
    pigeonMap['formatHint'] = formatHint;
    return pigeonMap;
  }

  // ignore: unused_element
  static CreateMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final CreateMessage result = CreateMessage();
    result.asset = pigeonMap['asset'];
    result.uri = pigeonMap['uri'];
    result.packageName = pigeonMap['packageName'];
    result.formatHint = pigeonMap['formatHint'];
    return result;
  }
}

class LoopingMessage {
  int textureId;
  bool isLooping;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['isLooping'] = isLooping;
    return pigeonMap;
  }

  // ignore: unused_element
  static LoopingMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final LoopingMessage result = LoopingMessage();
    result.textureId = pigeonMap['textureId'];
    result.isLooping = pigeonMap['isLooping'];
    return result;
  }
}

class VolumeMessage {
  int textureId;
  double volume;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['volume'] = volume;
    return pigeonMap;
  }

  // ignore: unused_element
  static VolumeMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final VolumeMessage result = VolumeMessage();
    result.textureId = pigeonMap['textureId'];
    result.volume = pigeonMap['volume'];
    return result;
  }
}

class PositionMessage {
  int textureId;
  int position;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['position'] = position;
    return pigeonMap;
  }

  // ignore: unused_element
  static PositionMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final PositionMessage result = PositionMessage();
    result.textureId = pigeonMap['textureId'];
    result.position = pigeonMap['position'];
    return result;
  }
}

class SpeedMessage {
  int textureId;
  double speed;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['speed'] = speed;
    return pigeonMap;
  }

  // ignore: unused_element
  static SpeedMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final SpeedMessage result = SpeedMessage();
    result.textureId = pigeonMap['textureId'];
    result.speed = pigeonMap['speed'];
    return result;
  }
}

class ClipMessage {
  int textureId;
  int startMs;
  int endMs;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['textureId'] = textureId;
    pigeonMap['startMs'] = startMs;
    pigeonMap['endMs'] = endMs;
    return pigeonMap;
  }

  // ignore: unused_element
  static ClipMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final ClipMessage result = ClipMessage();
    result.textureId = pigeonMap['textureId'];
    result.startMs = pigeonMap['startMs'];
    result.endMs = pigeonMap['endMs'];
    return result;
  }
}

class MixWithOthersMessage {
  bool mixWithOthers;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['mixWithOthers'] = mixWithOthers;
    return pigeonMap;
  }

  // ignore: unused_element
  static MixWithOthersMessage _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final MixWithOthersMessage result = MixWithOthersMessage();
    result.mixWithOthers = pigeonMap['mixWithOthers'];
    return result;
  }
}

class VideoPlayerApi {
  Future<void> initialize() async {
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.initialize', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(null);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<TextureMessage> create(CreateMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.create', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return TextureMessage._fromMap(replyMap['result']);
    }
  }

  Future<void> dispose(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.dispose', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setLooping(LoopingMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setLooping', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setVolume(VolumeMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setVolume', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> play(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.play', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<PositionMessage> position(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.position', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return PositionMessage._fromMap(replyMap['result']);
    }
  }

  Future<void> seekTo(PositionMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.seekTo', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setSpeed(SpeedMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setSpeed', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> clip(ClipMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.clip', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> pause(TextureMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.pause', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }

  Future<void> setMixWithOthers(MixWithOthersMessage arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.VideoPlayerApi.setMixWithOthers',
        StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      // noop
    }
  }
}
