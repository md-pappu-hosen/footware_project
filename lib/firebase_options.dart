import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

FirebaseOptions firebaseOptions = Platform.isAndroid
    ? FirebaseOptions(
        apiKey: 'AIzaSyDfBDPFHZaIPcxFGy1hBL44vCivpr05XgE',
        appId: '1:243361519805:android:197f79552a3e1e87933fd4',
        messagingSenderId: '243361519805',
        projectId: 'rapid-flutter-ade8b',
      )
    : FirebaseOptions(
        apiKey: 'AIzaSyCedDqovxmONSO1wXdpYZnLFpZHieESOvY',
        appId: '1:243361519805:ios:a5c045fa5bb636d0933fd4',
        messagingSenderId: '243361519805',
        projectId: 'rapid-flutter-ade8b',
      );
