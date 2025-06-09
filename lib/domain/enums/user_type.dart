enum UserType {
  common,
  psychologist,
  admin,
}

extension UserTypeExtension on UserType {
  int get id {
    switch (this) {
      case UserType.common:
        return 1;
      case UserType.psychologist:
        return 3;
      case UserType.admin:
        return 6;
    }
  }
}
