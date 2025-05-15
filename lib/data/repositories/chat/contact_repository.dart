import 'package:nextmind_mobile/data/models/user_model.dart';
import 'package:nextmind_mobile/data/services/api/chat/contact_service.dart';


class ContactRepository {
  final ContactService service;

  ContactRepository(this.service);

  Future<List<UserModel>> fetchContacts() {
    return service.getContactList();
  }

  Future<List<UserModel>> fetchUsersToAdd() {
    return service.getUsersToAdd();
  }
}
