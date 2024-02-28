part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    MessageModel? currentMessage,
    @Default([]) List<MessageModel> messages,
  }) = _MessageState;
}
