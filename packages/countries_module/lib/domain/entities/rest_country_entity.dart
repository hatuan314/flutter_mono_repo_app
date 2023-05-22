class RestCountryEntity {
  NameEntity? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Map<String, dynamic>? currencies;
  IddEntity? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  LanguagesEntity? languages;
  Map<String, dynamic>? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  int? area;
  String? flag;
  MapsEntity? maps;
  int? population;
  String? fifa;
  CarEntity? car;
  List<String>? timezones;
  List<String>? continents;
  FlagsEntity? flags;
  CoatOfArmsEntity? coatOfArms;
  String? startOfWeek;
  CapitalInfoEntity? capitalInfo;
  PostalCodeEntity? postalCode;

  RestCountryEntity(
      {this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.languages,
        this.translations,
        this.latlng,
        this.landlocked,
        this.borders,
        this.area,
        this.flag,
        this.maps,
        this.population,
        this.fifa,
        this.car,
        this.timezones,
        this.continents,
        this.flags,
        this.coatOfArms,
        this.startOfWeek,
        this.capitalInfo,
        this.postalCode});
}

class NameEntity {
  String? common;
  String? official;
  NativeNameEntity? nativeName;

  NameEntity({this.common, this.official, this.nativeName});

}

class NativeNameEntity {
  OfficialEntity? official;

  NativeNameEntity({this.official});

}

class OfficialEntity {
  String? official;
  String? common;

  OfficialEntity({this.official, this.common});
}

class CurrencyEntity {
  String? name;
  String? symbol;

  CurrencyEntity({this.name, this.symbol});
}

class IddEntity {
  String? root;
  List<String>? suffixes;

  IddEntity({this.root, this.suffixes});
}

class LanguagesEntity {
  String? lang;

  LanguagesEntity({this.lang});

}

class MapsEntity {
  String? googleMaps;
  String? openStreetMaps;

  MapsEntity({this.googleMaps, this.openStreetMaps});

}

class CarEntity {
  List<String>? signs;
  String? side;

  CarEntity({this.signs, this.side});

}

class FlagsEntity {
  String? png;
  String? svg;
  String? alt;

  FlagsEntity({this.png, this.svg, this.alt});

}

class CoatOfArmsEntity {
  String? png;
  String? svg;

  CoatOfArmsEntity({this.png, this.svg});

}

class CapitalInfoEntity {
  List<double>? latlng;

  CapitalInfoEntity({this.latlng});
}

class PostalCodeEntity {
  String? format;
  String? regex;

  PostalCodeEntity({this.format, this.regex});

}
