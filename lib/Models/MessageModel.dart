import 'package:dummychatapp/Models/UserModel.dart';

class Message {
  final User sender;
  final String time; // time would be a datetime or timestamp in real world apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

//current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'images/john.jpg',
);

// USERS
final User brianna = User(
  id: 1,
  name: 'Brianna',
  imageUrl: 'images/brianna.jpg',
);
final User jake = User(
  id: 2,
  name: 'Jake',
  imageUrl: 'images/jake.jpg',
);
final User kim = User(
  id: 3,
  name: 'Kim',
  imageUrl: 'images/kim.jpg',
);

final User seyi = User(
  id: 4,
  name: 'Seyi',
  imageUrl: 'images/seyi.jpg',
);

final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'images/samantha.jpg',
);

final User jane = User(
  id: 6,
  name: 'Jane',
  imageUrl: 'images/jane.jpg',
);

final User felix = User(
  id: 7,
  name: 'Felix',
  imageUrl: 'images/felix.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, seyi, kim, jake, jane];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: sam,
    time: '5:30 PM',
    text: 'Hey, How are you, Can we meet today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jake,
    time: '4:30 PM',
    text: 'Hello bro! sorry i missed your call',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: brianna,
    time: '3:30 PM',
    text: 'Hi! Why were you absent from work today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: kim,
    time: '2:30 PM',
    text: 'The team would be having a meeting',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: felix,
    time: '1:30 PM',
    text: 'Hi John, the souvenirs are ready for collection',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: seyi,
    time: '11:30 AM',
    text: 'Are you around?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: jane,
    time: '5:30 PM',
    text: 'Oh really! that will be great',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Sorry about that! Maybe i can fix you somewhere else',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jane,
    time: '3:45 PM',
    text: 'My boss is so mean!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jane,
    time: '3:15 PM',
    text: 'I have been stressed out with work lately',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'I am good. How are you Jane?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jane,
    time: '2:00 PM',
    text: 'Hi John, how are you today?',
    isLiked: false,
    unread: true,
  ),
];
