
import 'package:flutter_demos/demo2(chat)/model/message.dart';
import 'package:flutter_demos/demo2(chat)/model/user.dart';

final  mohammad=  User(
    uid: "1",
    name: 'mohammad',
    img: 'assets/1.jpg'
  );
  final  ali=  User(
    uid: "2",
    name: 'ali',
    img: 'assets/2.jpg'
  );


final  kassem=  User(
    uid: "3",
    name: 'kassem',
    img: 'assets/3.jpg'
  );

final  sami=  User(
    uid: "4",
    name: 'sami',
    img: 'assets/4.jpg'
  );

final  shadi=   User(
    uid: "5",
    name: 'shadi',
    img: 'assets/5.jpg'
  );

final  currentUser=   User(
    uid: "0",
    name: 'curentUser',
    img: 'assets/smil.jpg'
  );
List<User> users=[
    mohammad,
    ali,
    kassem, 
    sami ,
    shadi,

    User(
      uid: "6",
      name: 'youseph',
      img: 'assets/6.png'
    ), 
     User(
      uid: "7",
      name: 'adnan',
      img: 'assets/1.jpg'
    )
];

List<User> favorate=[
    mohammad,
    ali,
    kassem, 
    sami ,
    shadi,
];

List<Message> messages=[



    Message(
   sender: currentUser,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: currentUser,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
  Message(
   sender: mohammad,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: mohammad,
   isLiked: true,
   unReed: true,
   msg: 'hello welcome wftwrf3rascf ienfddddddddddddddf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: ali,
   isLiked: false,
   unReed: true,
   msg: 'hello welcome insweifrrrrrrrewefnf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: shadi,
   isLiked: true,
   unReed: false,
   msg: 'hello weweasfdcaeswfaewfawe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
      Message(
   sender: currentUser,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: mohammad,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
      Message(
   sender: currentUser,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: mohammad,
   isLiked: true,
   unReed: true,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  ),
    Message(
   sender: mohammad,
   isLiked: true,
   unReed: false,
   msg: 'hello welcome insweif ienfwe fiewnf efiefne fjef',
   time: '5:20 pm'
  )
];

List<String> category=['Messagees','Option1' ,'Option2','Option3','Option4'];