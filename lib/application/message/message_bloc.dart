import 'dart:developer';

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
            emit(
              state.copyWith(messages: temp, currentMessage: temp.isNotEmpty?temp[0]:null),
            );
            log("setting ${ temp.isNotEmpty?temp[0].toJson():null}");
            event.onSuccess.call();
        }, (r) {
          event.onError.call(r);
        });
      }
    });

    on<SetIntroMessages>((event, emit) async {
      final res = await messageRepository.getAllMessages();
      res.fold((l) {
        List<String> introMesses =
            LocalData.introMessages.map((e) => e.toRawJson()).toList();
        List<String> remoteMes = l.map((e) => e.toRawJson()).toList();
        Set<String> remoteSet = remoteMes.toSet();
        Set<String> introSet = introMesses.toSet();
        List<MessageModel> tempMes = List.from(introSet.difference(remoteSet))
            .map((e) => MessageModel.fromRawJson(e))
            .toList();
        emit(
          state.copyWith(
            messages: tempMes,
          ),
        );
        if (tempMes.isNotEmpty) {
          emit(state.copyWith(currentMessage: tempMes[0]));
        }
        event.onSuccess.call();
      }, (r) {
        event.onError.call(r);
      });
    });
  }
}
