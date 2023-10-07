class AppConstants {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `LocalStorageKey()` accidentally
  AppConstants._();

  // the properties are static so that we can use them without a class instance
  // e.g. can be retrieved by `LocalStorageKey.saveUserId`.
  static const String token =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2NWE2MmViM2Q5YjhjMjFiOWZmMDA0NDA3YmQ2ZDAyNyIsInN1YiI6IjY1MTY2MTVmZDQ2NTM3MDlkZDc2NTc2MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MCDY079H9gFe0jlpe459tRsJddPQaoe680loutEQ7Fg';
  static const String accountId = '20506274';
  static const String darkModeOn='darkModeOn';
}
