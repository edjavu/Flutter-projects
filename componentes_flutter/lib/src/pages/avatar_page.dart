import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  // const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://w7.pngwing.com/pngs/946/841/png-transparent-ironman-helmet-ironman-icon-thumbnail.png'
              ),
              radius: 30.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage('https://www.supercoloring.com/sites/default/files/fif/2018/08/ironman-mask-template-paper-craft.png'), 
          placeholder: AssetImage('assets/jar-loading.gif'), 
          fadeInDuration: Duration(milliseconds: 200)
        ),
      ),
    );
  }
}