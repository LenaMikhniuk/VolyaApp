class ErrorUtils {
  static String getErrorMessage(String message) {
    if (message == null) {
      return 'Something went wrong! Please try again';
    }
    if (message ==
        '[firebase_auth/email-already-in-use] The email address is already in use by another account.') {
      return 'This email already exists';
    }
    if (message ==
        '[firebase_auth/invalid-email] The email address is badly formatted.') {
      return 'Invalid email';
    }
    if (message ==
        '[firebase_auth/weak-password] Password should be at least 6 characters') {
      return 'Invalid password. Password must contain at least 6 characters';
    }
    if (message ==
        '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.') {
      return 'User is not found, please check your data';
    } else {
      return 'Something went wrong! Please try again';
    }
  }
}
