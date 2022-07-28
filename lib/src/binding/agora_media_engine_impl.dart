import 'package:agora_rtc_ng/src/binding_forward_export.dart';
import 'package:agora_rtc_ng/src/binding/impl_forward_export.dart';

// ignore_for_file: public_member_api_docs, unused_local_variable

class MediaEngineImpl implements MediaEngine {
  @protected
  Map<String, dynamic> createParams(Map<String, dynamic> param) {
    return param;
  }

  @override
  Future<void> registerAudioFrameObserver(AudioFrameObserver observer) async {
    const apiType = 'MediaEngine_registerAudioFrameObserver';
    final param = createParams({'observer': observer});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> registerVideoFrameObserver(VideoFrameObserver observer) async {
    const apiType = 'MediaEngine_registerVideoFrameObserver';
    final param = createParams({'observer': observer});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> registerVideoEncodedFrameObserver(
      VideoEncodedFrameObserver observer) async {
    const apiType = 'MediaEngine_registerVideoEncodedFrameObserver';
    final param = createParams({'observer': observer});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pushAudioFrame(
      {required MediaSourceType type,
      required AudioFrame frame,
      bool wrap = false,
      int sourceId = 0}) async {
    const apiType = 'MediaEngine_pushAudioFrame';
    final param = createParams({
      'type': type.value(),
      'frame': frame.toJson(),
      'wrap': wrap,
      'sourceId': sourceId
    });
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pushCaptureAudioFrame(AudioFrame frame) async {
    const apiType = 'MediaEngine_pushCaptureAudioFrame';
    final param = createParams({'frame': frame.toJson()});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pushReverseAudioFrame(AudioFrame frame) async {
    const apiType = 'MediaEngine_pushReverseAudioFrame';
    final param = createParams({'frame': frame.toJson()});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pushDirectAudioFrame(AudioFrame frame) async {
    const apiType = 'MediaEngine_pushDirectAudioFrame';
    final param = createParams({'frame': frame.toJson()});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pullAudioFrame(AudioFrame frame) async {
    const apiType = 'MediaEngine_pullAudioFrame';
    final param = createParams({'frame': frame.toJson()});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> setExternalVideoSource(
      {required bool enabled,
      required bool useTexture,
      ExternalVideoSourceType sourceType = ExternalVideoSourceType.videoFrame,
      SenderOptions encodedVideoOption = const SenderOptions()}) async {
    const apiType = 'MediaEngine_setExternalVideoSource';
    final param = createParams({
      'enabled': enabled,
      'useTexture': useTexture,
      'sourceType': sourceType.value(),
      'encodedVideoOption': encodedVideoOption.toJson()
    });
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> setExternalAudioSource(
      {required bool enabled,
      required int sampleRate,
      required int channels,
      int sourceNumber = 1,
      bool localPlayback = false,
      bool publish = true}) async {
    const apiType = 'MediaEngine_setExternalAudioSource';
    final param = createParams({
      'enabled': enabled,
      'sampleRate': sampleRate,
      'channels': channels,
      'sourceNumber': sourceNumber,
      'localPlayback': localPlayback,
      'publish': publish
    });
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> setExternalAudioSink(
      {required bool enabled,
      required int sampleRate,
      required int channels}) async {
    const apiType = 'MediaEngine_setExternalAudioSink';
    final param = createParams(
        {'enabled': enabled, 'sampleRate': sampleRate, 'channels': channels});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> enableCustomAudioLocalPlayback(
      {required int sourceId, required bool enabled}) async {
    const apiType = 'MediaEngine_enableCustomAudioLocalPlayback';
    final param = createParams({'sourceId': sourceId, 'enabled': enabled});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> setDirectExternalAudioSource(
      {required bool enable, bool localPlayback = false}) async {
    const apiType = 'MediaEngine_setDirectExternalAudioSource';
    final param =
        createParams({'enable': enable, 'localPlayback': localPlayback});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pushVideoFrame(
      {required ExternalVideoFrame frame, int videoTrackId = 0}) async {
    const apiType = 'MediaEngine_pushVideoFrame';
    final param =
        createParams({'frame': frame.toJson(), 'videoTrackId': videoTrackId});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> pushEncodedVideoImage(
      {required Uint8List imageBuffer,
      required int length,
      required EncodedVideoFrameInfo videoEncodedFrameInfo,
      int videoTrackId = 0}) async {
    const apiType = 'MediaEngine_pushEncodedVideoImage';
    final param = createParams({
      'length': length,
      'videoEncodedFrameInfo': videoEncodedFrameInfo.toJson(),
      'videoTrackId': videoTrackId
    });
    final callApiResult = await apiCaller
        .callIrisApi(apiType, jsonEncode(param), buffer: imageBuffer);
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }

  @override
  Future<void> release() async {
    const apiType = 'MediaEngine_release';
    final param = createParams({});
    final callApiResult =
        await apiCaller.callIrisApi(apiType, jsonEncode(param));
    if (callApiResult.irisReturnCode < 0) {
      throw AgoraRtcException(code: callApiResult.irisReturnCode);
    }
    final rm = callApiResult.data;
    final result = rm['result'];
    if (result < 0) {
      throw AgoraRtcException(code: result);
    }
  }
}