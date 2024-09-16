part of 'post_bloc.dart';

class ChannelState extends Equatable {
  final List<ChannelPost> channelPosts;

  static const List<ChannelPost> _defaultChannelPosts = [];

  const ChannelState({this.channelPosts = _defaultChannelPosts});

  @override
  List<Object> get props => [];

  ChannelState copyWith({List<ChannelPost>? channelPosts}) => ChannelState(
        channelPosts: channelPosts ?? this.channelPosts,
      );
}

class ChannelInitial extends ChannelState {}
