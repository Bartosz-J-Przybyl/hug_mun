import 'package:hug_mun/api/model/response/channel_post_response.dart';
import 'package:hug_mun/api/model/response/channel_response.dart';

class ChannelResponseMapper {
  static List<ChannelResponse> channels(List<dynamic> json) => json
      .map((e) => e as Map<String, dynamic>)
      .map((e) => ChannelResponse.fromJson(e))
      .toList();

  static List<ChannelPostResponse> channelPosts(List<dynamic> json) => json
      .map((e) => e as Map<String, dynamic>)
      .map((e) => ChannelPostResponse.fromJson(e))
      .toList();
}
