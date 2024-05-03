part of 'channel_bloc.dart';

abstract class ChannelEvent extends Equatable {
  const ChannelEvent();

  @override
  List<Object> get props => [];
}

class ChannelsChanged extends ChannelEvent {
  final List<Channel> channels;

  const ChannelsChanged({required this.channels});

  @override
  List<Object> get props => [channels];
}
