import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/mappers/channel_response_mapper.dart';
import 'package:hug_mun/api/model/response/channel_response.dart';
import 'package:hug_mun/api/services/rest_service.dart';

class ChannelService extends RestService {
  final HugMunHttpClient _httpClient;

  ChannelService(this._httpClient)
      : super(httpClient: _httpClient, baseUrl: '/channels');

  ///
  ///Parameters:
  /// not_associated_to_group - A group id to exclude channels that are associated with that group via GroupChannel records. This can also be left blank with not_associated_to_group=.
  /// page - The page to select.
  /// per_page - The number of channels per page.
  /// exclude_default_channels - Whether to exclude default channels (ex Town Square, Off-Topic) from the results.
  /// include_deleted - Include channels that have been archived. This correlates to the DeleteAt flag being set in the database.
  /// include_total_count - Appends a total count of returned channels inside the response object - ex: { "channels": [], "total_count" : 0 }.
  /// exclude_policy_constrained - If set to true, channels which are part of a data retention policy will be excluded. The sysconsole_read_compliance permission is required to use this parameter. Minimum server version: 5.35
  ///
  Future<List<ChannelResponse>> getChannels() async =>
      _httpClient.get(ChannelResponseMapper.channels, baseUrl, parameters: {
        "not_associated_to_group": '',
        "page": "0",
        "per_page": "0",
        "exclude_default_channels": "false",
        "include_deleted": "false",
        "include_total_count": "false",
        "exclude_policy_constrained": "false"
      });
}
