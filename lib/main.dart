import 'package:alnisyan/models/Medicines.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

import '../amplifyconfiguration.dart';
import '../models/ModelProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    // Add the following lines to your app initialization to add the DataStore plugin
    AmplifyDataStore datastorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    Amplify.addPlugin(datastorePlugin);
    try {
      await Amplify.configure(amplifyconfig);
      Medicines newPost = Medicines(
        title: 'New Post being saved',
        rating: 15,
        status: MedicineStatus.Done,
      );
      await Amplify.DataStore.save(newPost);
    } on AmplifyAlreadyConfiguredException {
      print(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    throw UnimplementedError();
  }
}