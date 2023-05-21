// ignore_for_file: prefer_interpolation_to_compose_strings

class AppUrl {
  // this is our base url
  static const baseUrl = 'https://disease.sh/v3/covid-19/';

  // fetch world covid states
  static const String worldStatesApi = baseUrl + 'all';
  static const String countriesList = baseUrl + 'countries';
}
