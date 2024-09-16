part of 'post_bloc.dart';

abstract class ChannelEvent extends Equatable {
  const ChannelEvent();

  @override
  List<Object> get props => [];
}

class ChannelsChanged extends ChannelEvent {
  final List<ChannelPost> channelPosts;

  const ChannelsChanged({required this.channelPosts});

  @override
  List<Object> get props => [channelPosts];
}
