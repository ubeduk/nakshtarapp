import '../dummy_data/dummy_data.dart';
import '../models/models.dart';

class UserRepository {

  Future<UserModel> getCurrentUser() async {

    await Future.delayed(
      const Duration(milliseconds: 300),
    );

    return UsersData.currentUser;
  }
}