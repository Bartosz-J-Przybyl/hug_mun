import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hug_mun/models/channel.dart';

part 'channel_event.dart';
part 'channel_state.dart';

class ChannelBloc extends Bloc<ChannelEvent, ChannelState> {
  ChannelBloc() : super(ChannelInitial());

  @override
  Stream<ChannelState> mapEventToState(
    ChannelEvent event,
  ) async* {
    switch (event) {
      case ChannelsChanged():
        yield* _mapChannelsChangedToState(event, state);
    }
  }

  Stream<ChannelState> _mapChannelsChangedToState(
    ChannelsChanged event,
    ChannelState state,
  ) async* {
    state.copyWith(channels: event.channels);
    yield state;
  }
}
