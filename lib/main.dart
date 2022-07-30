import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app.dart';

import './app_bloc_observer.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  timeago.setLocaleMessages('ko', timeago.KoMessages());

  CustomImageCache();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();

  // Ideal time to initialize
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
//...

  await SentryFlutter.init((options) {
    options.environment = 'DEV';
    options.dsn =
        'https://b5682c50658b4678b9d2f40ab235a34b@o1340569.ingest.sentry.io/6613364';
    // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
    // We recommend adjusting this value in production.
    options.tracesSampleRate = 1.0;
  }, appRunner: () {
    BlocOverrides.runZoned(
      () {
        runApp(App());
      },
      blocObserver: AppBlocObserver(),
    );
  });
}

//이미지 캐쉬
class CustomImageCache extends WidgetsFlutterBinding {
  @override
  ImageCache createImageCache() {
    ImageCache imageCache = super.createImageCache();
    // Set your image cache size
    imageCache.maximumSizeBytes = 300 * 1024 * 1024; //200mb 이상->캐시클리어

    return imageCache;
  }
}
