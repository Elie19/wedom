class Validators {
  // Validate wallet address
  static String? validateWalletAddress(String? address) {
    if (address == null || address.isEmpty) {
      return 'Wallet address cannot be empty';
    }
    // Basic wallet address pattern (adjust regex as per specific wallet address format)
    final regex = RegExp(r'^[a-zA-Z0-9]{26,35}\$');
    if (!regex.hasMatch(address)) {
      return 'Invalid wallet address';
    }
    return null;
  }

  // Validate email address
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email cannot be empty';
    }
    final regex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$');
    if (!regex.hasMatch(email)) {
      return 'Invalid email address';
    }
    return null;
  }

  // Validate password
  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password cannot be empty';
    }
    if (password.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#\\$%^&*(),.?":{}|<>]').hasMatch(password)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  // Validate username
  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username cannot be empty';
    }
    if (username.length < 3) {
      return 'Username must be at least 3 characters long';
    }
    return null;
  }

  // Validate amount (e.g., transaction amount)
  static String? validateAmount(String? amount) {
    if (amount == null || amount.isEmpty) {
      return 'Amount cannot be empty';
    }
    final num? value = num.tryParse(amount);
    if (value == null || value <= 0) {
      return 'Invalid amount';
    }
    return null;
  }
}
