import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4D03AQHKgFb96Hyo7Q/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=2xIcKMZM4nbv11Crbma6nD0XpRhMG_dWVVVPEcSx4p0'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: 10
          ),
          child: CircleAvatar(
            child: Text('SL'),
          ),
        )
      ],
      ),
      body: Center(
        child: FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage(
          'https://media-exp1.licdn.com/dms/image/C4D03AQHKgFb96Hyo7Q/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=2xIcKMZM4nbv11Crbma6nD0XpRhMG_dWVVVPEcSx4p0'))
        
        
        
      ),

    );
  }


}