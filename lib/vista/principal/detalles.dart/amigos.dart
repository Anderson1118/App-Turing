
import 'package:app_turing/barra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../models/user.dart';



class amigos extends StatefulWidget {
  const amigos({ Key? key }) : super(key: key);

  @override
  _amigosState createState() => _amigosState();
}

class _amigosState extends State<amigos> {

  List<User> _users = [
    User('Elliana Palacios', '@elliana', 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b', false),
    User('Kayley Dwyer', '@kayley', 'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3', false),
    User('Kathleen Mcdonough', '@kathleen', 'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da', false),
    User('Kathleen Dyer', '@kathleen', 'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387', false),
    User('Mikayla Marquez', '@mikayla', 'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('Kiersten Lange', '@kiersten', 'https://images.unsplash.com/photo-1542534759-05f6c34a9e63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('Carys Metz', '@metz', 'https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('Ignacio Schmidt', '@schmidt', 'https://images.unsplash.com/photo-1542973748-658653fb3d12?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('Clyde Lucas', '@clyde', 'https://images.unsplash.com/photo-1569443693539-175ea9f007e8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('Mikayla Marquez', '@mikayla', 'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false)
  ];

  List<User> _foundedUsers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      _foundedUsers = _users;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = _users.where((user) => user.name.toLowerCase().contains(search)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 151, 141, 141),
        title: Container(
          height: 38,
          child: TextField(
            onChanged: (value) => onSearch(value),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[850],
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none
              ),
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade500
              ),
              hintText: "Buscar personas"
            ),
          ),
        ),
      ),
      bottomNavigationBar: Home(),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: _foundedUsers.length > 0 ? ListView.builder(
          itemCount: _foundedUsers.length,
          itemBuilder: (context, index) {
            return Slidable(
              actionPane: const SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: userComponent(user: _foundedUsers[index]),
              actions: <Widget>[
                new IconSlideAction(
                  caption: 'Archive',
                  color: Colors.transparent,
                  icon: Icons.archive,
                  
                  onTap: () => print("archive"),
                ),
                new IconSlideAction(
                  caption: 'Share',
                  color: Colors.transparent,
                  icon: Icons.share,
                  onTap: () => print('Share'),
                ),
              ],
              secondaryActions: <Widget>[
                new IconSlideAction(
                  caption: 'More',
                  color: Colors.transparent,
                  icon: Icons.more_horiz,
                  onTap: () => print('More'),
                ),
                new IconSlideAction(
                  caption: 'Delete',
                  color: Colors.transparent,
                  icon: Icons.delete,
                  onTap: () => print('Delete'),
                ),
              ],
            );
          }) : Center(child: Text("No users found", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),)),
      ),
    );
  }

  userComponent({required User user}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.image),
                )
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500)),
                  SizedBox(height: 5,),
                  Text(user.username, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                ]
              )
            ]
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                user.isFollowedByMe = !user.isFollowedByMe;
              });
            },
            child: AnimatedContainer(
              height: 35,
              width: 110,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: user.isFollowedByMe ? Color.fromARGB(255, 189, 0, 0) : Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: user.isFollowedByMe ? Color.fromARGB(255, 255, 255, 255) : Colors.grey.shade700,)
              ),
              child: Center(
                child: Text(user.isFollowedByMe ? 'Seguir Tambien' : 'Amigos', style: TextStyle(color: user.isFollowedByMe ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 0, 0, 0)))
              )
            ),
          )
        ],
      ),
    );
  }
}
