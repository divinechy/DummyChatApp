import 'package:dummychatapp/Models/MessageModel.dart';
import 'package:dummychatapp/Models/UserModel.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg =  Container(
          width:  MediaQuery.of(context).size.width * 0.70,
          margin: isMe
              ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
              : EdgeInsets.only(top: 8.0, bottom: 8.0,),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0), 
            ) : 
            BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0), 
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(message.time, style:TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 8.0),
              Text(message.text, style:TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600)
              ),
            ],
          ),
        );

        //if message is from me, return container widget as it is
      if (isMe){
        return msg;
      }

    return Row(
      children: <Widget>[
       msg,
        IconButton(
              icon: message.isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border) ,
              iconSize: 30,
              color: message.isLiked ? Colors.red : Colors.blueGrey,
              onPressed: () {})
      ],
    );
  }

  _buildMessageComposer(){
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0
        ),
        height: 70.0,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(
                  icon: Icon(Icons.sentiment_satisfied),
                  iconSize: 25,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {}),
                  Expanded(child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (value) {},
                    decoration: InputDecoration.collapsed(
                      hintText: 'Send a message...'
                    ),
                  )),
                  IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 25,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {}),
          ],
        ) ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {}),
        title: Text(
          widget.user.name,
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
               reverse: true,
                padding: EdgeInsets.only(top: 15.0),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final Message message = messages[index];
                  //checking if tthe user that sent the text is the current user
                  final bool isMe = message.sender.id == currentUser.id;
                  return _buildMessage(message, isMe);
                },
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
            ),
          ),
          _buildMessageComposer()
        ],
      ),
    );
  }
}
