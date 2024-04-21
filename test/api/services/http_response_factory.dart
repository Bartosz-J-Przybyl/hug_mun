import 'package:hug_mun/api/model/response/channel_response.dart';
import 'package:hug_mun/api/model/response/login_response_model.dart';
import 'package:hug_mun/api/model/response/notify_props.dart';
import 'package:hug_mun/api/model/response/team_response.dart';
import 'package:hug_mun/api/model/response/time_zone.dart';

class HttpResponseFactory {
  static LoginModelResponse loginModelResponse() => const LoginModelResponse(
      id: "beu9rxr48i859nqruz9f4fotyy",
      createAt: 1695390382441,
      updateAt: 1713545561859,
      deleteAt: 0,
      username: "john.snow",
      authData: "",
      authService: "",
      email: "john.snow@mm.com",
      nickname: "john.snow",
      firstName: "John",
      lastName: "Snow",
      position: "dev",
      roles: "system_user",
      notifyProps: NotifyProps(
          channel: "true",
          comments: "never",
          desktop: "mention",
          desktopSound: "true",
          desktopThreads: "all",
          email: "true",
          emailThreads: "all",
          firstName: "false",
          mentionKeys: "",
          push: "mention",
          pushStatus: "away",
          pushThreads: "all"),
      lastPasswordUpdate: 1695390382441,
      lastPictureUpdate: 1696447466583,
      locale: "en",
      timezone: Timezone(
          automaticTimezone: "Europe/Warsaw",
          manualTimezone: "",
          useAutomaticTimezone: true),
      disableWelcomeEmail: false);

  static TeamResponse modelTeamResponse() => TeamResponse(
      id: "dj4p9fu4rpnspehpbgznywskbh",
      createAt: 1695306008859,
      updateAt: 1695306008850,
      deleteAt: 0,
      displayName: "test",
      name: "test",
      description: "description",
      email: "",
      type: "O",
      companyName: "test company",
      allowedDomains: "",
      inviteId: "ywkjm66np7rude3faqk97szj6h",
      allowOpenInvite: false,
      schemeId: "",
      groupConstrained: false,
      cloudLimitsArchived: false);

  static List<ChannelResponse> channelModelsResponse() => List.generate(
      5,
      (index) => const ChannelResponse(
            id: "pcgixyncci8e5njz1rxudfrd9o",
            createAt: 1695306008862,
            updateAt: 1695306008862,
            deleteAt: 0,
            teamId: "dj4p9fu4rpnspehpbgznywskbh",
            type: "O",
            displayName: "Town Square",
            name: "town-square",
            header: "",
            purpose: "",
            lastPostAt: 1713614967877,
            totalMsgCount: 4986,
            extraUpdateAt: 0,
            creatorId: "",
          ));
}
