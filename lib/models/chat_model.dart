class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;
  final String backgroundUrl;

  ChatModel({
    required this.avatarUrl,
    required this.name,
    required this.datetime,
    required this.message,
    required this.backgroundUrl,
  });

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Laurent",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
      backgroundUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbCivmZmSmQzOw7jmjkx87xjXMxn6q0iByNA&s',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Tracy",
      datetime: "19:22",
      message: "I love that idea, it's great!",
      backgroundUrl:
          "https://t3.ftcdn.net/jpg/03/00/23/96/360_F_300239640_0N7DxFH5cejBwKBcbdKxQB1xPn8DMn7D.jpg",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Claire",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
      backgroundUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/013/730/092/small/mountains-color-translucent-waves-abstract-glass-shape-modern-background-design-illustration-vector.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "11:05",
      message: "Flutter just release 1.0 officially. Should I go for it?",
      backgroundUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/008/277/939/small/background-with-mountains-nature-mountain-in-green-color-free-vector.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Mark",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
      backgroundUrl:
          'https://t3.ftcdn.net/jpg/05/90/80/44/360_F_590804436_mcdEkWXO2ZlLPxauZQEqKTJESMTlSKDE.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Williams",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
      backgroundUrl:
          'https://i.pinimg.com/736x/80/24/a7/8024a76c8060cb87967f0ca07805ae7c.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "L",
      datetime: "20:18",
      message: "How about meeting tomorrow?",
      backgroundUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/013/730/092/small/mountains-color-translucent-waves-abstract-glass-shape-modern-background-design-illustration-vector.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "T",
      datetime: "19:22",
      message: "I love that idea, it's great!",
      backgroundUrl:
          'https://t3.ftcdn.net/jpg/05/90/80/44/360_F_590804436_mcdEkWXO2ZlLPxauZQEqKTJESMTlSKDE.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "C",
      datetime: "14:34",
      message: "I wasn't aware of that. Let me check",
      backgroundUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbCivmZmSmQzOw7jmjkx87xjXMxn6q0iByNA&s',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "J",
      datetime: "11:05",
      message: "Flutter just release 1.0 officially. Should I go for it?",
      backgroundUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/008/277/939/small/background-with-mountains-nature-mountain-in-green-color-free-vector.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "M",
      datetime: "09:46",
      message: "It totally makes sense to get some extra day-off.",
      backgroundUrl:
          'https://t3.ftcdn.net/jpg/05/90/80/44/360_F_590804436_mcdEkWXO2ZlLPxauZQEqKTJESMTlSKDE.jpg',
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "W",
      datetime: "08:15",
      message: "It has been re-scheduled to next Saturday 7.30pm",
      backgroundUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/013/730/092/small/mountains-color-translucent-waves-abstract-glass-shape-modern-background-design-illustration-vector.jpg',
    ),
  ];
}
