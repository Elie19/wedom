import 'api_service.dart';

class WalletService {
  final ApiService apiService;

  WalletService({required this.apiService});

  // Fetch wallet details
  Future<dynamic> getWalletDetails(String userId) async {
    try {
      final response = await apiService.get('/wallet/$userId');
      return response;
    } catch (e) {
      throw Exception('Failed to fetch wallet details: $e');
    }
  }

  // Add a new wallet
  Future<dynamic> addWallet(String userId, Map<String, dynamic> walletData) async {
    try {
      final response = await apiService.post('/wallet/$userId', walletData);
      return response;
    } catch (e) {
      throw Exception('Failed to add wallet: $e');
    }
  }

  // Update wallet information
  Future<dynamic> updateWallet(String walletId, Map<String, dynamic> walletData) async {
    try {
      final response = await apiService.put('/wallet/$walletId', walletData);
      return response;
    } catch (e) {
      throw Exception('Failed to update wallet: $e');
    }
  }

  // Delete a wallet
  Future<dynamic> deleteWallet(String walletId) async {
    try {
      final response = await apiService.delete('/wallet/$walletId');
      return response;
    } catch (e) {
      throw Exception('Failed to delete wallet: $e');
    }
  }
}
