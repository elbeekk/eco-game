import 'package:bloc/bloc.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/infrastructure/data/local_data.dart';
import 'package:eco_game/infrastructure/models/class/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_event.dart';

part 'message_state.dart';

part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(const MessageState()) {
    on<ReadMessage>((event, emit) async {
      if (state.currentMessage != null) {
        List<MessageModel> temp = state.messages.toList();
        temp.removeWhere((element) => element.id == state.currentMessage?.id);
        final res = await messageRepository.readMessage(
            messageModel: state.currentMessage ?? MessageModel());
        res.fold((l) {
          if (l) {
            emit(
              state.copyWith(messages: temp, currentMessage: null),
            );
            event.onSuccess.call();
          }
        }, (r) {
          event.onError.call(r);
        });
      }
    });

    on<SetIntroMessages>((event, emit) async {
      final res = await messageRepository.getAllMessages();
      res.fold((l) {
        List<MessageModel> introMesses = LocalData.introMessages.toList();
        List<MessageModel> tempIntroMesses = LocalData.introMessages.toList();
        List<MessageModel> remoteMes = l.toList();
        for (MessageModel introMes in introMesses) {
          for (MessageModel alreadyReadMes in remoteMes) {
            if (introMes.id == alreadyReadMes.id) {
              tempIntroMesses
                  .removeWhere((element) => element.id == introMes.id);
            }
          }
        }
        emit(
          state.copyWith(
            messages: [...state.messages, ...tempIntroMesses],
          ),
        );
        if (state.messages.isNotEmpty) {
          emit(state.copyWith(currentMessage: state.messages[0]));
        }
        event.onSuccess.call();
      }, (r) {
        event.onError.call(r);
      });
    });
  }
}
