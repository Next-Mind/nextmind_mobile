import 'package:nextmind_mobile/data/models/user_model.dart';
import 'package:nextmind_mobile/data/services/chat/contact_service.dart';


class ContactRepository {
  final ContactService service;

  ContactRepository(this.service);

  Future<List<UserModel>> fetchContacts() {
    return service.getContactList();
  }

  Future<List<UserModel>> fetchUsersToAdd() {
    return service.getUsersToAdd();
  }

  Future<UserModel> addContact(int id) {
    return service.addContact(id);
  }

  Future<void> deleteContact(int id) {
    return service.deleteContact(id);
  }

  Future<void> updateContact(int id, String newName){
    return service.updateContact(id, newName);
  }
}
