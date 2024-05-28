part of 'channel_bloc.dart';

class ChannelState extends Equatable {
  final List<Channel> channels;

  static const List<Channel> _defaultChannels = [];

  const ChannelState({this.channels = _defaultChannels});

  @override
  List<Object> get props => [];

  ChannelState copyWith({List<Channel>? channels}) => ChannelState(
        channels: channels ?? this.channels,
      );
}

class ChannelInitial extends ChannelState {}
