import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hug_mun/models/post.dart';

part 'post_event.dart';
part 'post_state.dart';

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
    state.copyWith(channelPosts: event.channelPosts);
    yield state;
  }
}
