import 'package:flutter/material.dart';
import 'package:provider_demo/services/theme_notifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //
    print('build() of HomeScreen called');

    //
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_4),
            onPressed: () {
              context.read<ThemeNotifier>().changeTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Hello',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
