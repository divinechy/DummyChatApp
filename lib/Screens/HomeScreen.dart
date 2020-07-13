import 'package:dummychatapp/Components/CategorySelector.dart';
import 'package:dummychatapp/Components/FavoriteContacts.dart';
import 'package:dummychatapp/Components/RecentChats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {}),
        title: Text(
          'Chats',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: <Widget>[FavoriteContacts(), RecentChats()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
