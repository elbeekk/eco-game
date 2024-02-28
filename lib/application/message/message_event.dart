part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.readMessage({
    required Function(String error) onError,
    required Function onSuccess,
  }) = ReadMessage;
  const factory MessageEvent.setIntroMessages({
    required Function(String error) onError,
    required Function onSuccess,
}) = SetIntroMessages;
}
