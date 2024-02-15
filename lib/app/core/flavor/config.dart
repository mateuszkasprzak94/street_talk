enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get helloMessage {
    switch (appFlavor) {
      case Flavor.development:
        return 'Developers version';
      case Flavor.production:
        return 'Users version';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://api.npoint.io/';
      case Flavor.production:
        return 'https://api.npoint.io/';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }
}
