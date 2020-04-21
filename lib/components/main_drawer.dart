import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function ontap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: ontap
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            child: Text(
              'Vamos cozinhar ?',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).accentColor),
            ),
            color: Theme.of(context)
                .primaryColor, // color no container é a cor de background
          ),
          _createItem(
            Icons.restaurant, 
            'Refeições',
            () => Navigator.of(context).pushReplacementNamed(App_Routes.HOME),
          ),
          _createItem(
            Icons.settings, 
            'Configurações',
            () => Navigator.of(context).pushReplacementNamed(App_Routes.SETTINGS),
          )
            
          
        ],
      ),
    );
  }
}
