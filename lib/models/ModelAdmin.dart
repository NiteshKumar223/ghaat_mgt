

class AdminData {
  static final modeladmins = [
    ModelAdmin(
      adminName: 'PANKAJ SINGH',
      adminRole: 'SUPER ADMINISTRATION',
      adminContact: '7080215874',
      adminStatus: 'ACTIVE',
      adminActivatedOn: '23 JAN 2023',
    ),
  ]; 
}


class ModelAdmin {
  // final String adminId;
  final String adminName;
  // final String adminLetter;
  final String adminContact;
  final String adminRole;
  final String adminStatusText;
  final String adminStatus;
  final String adminActivetedOnText;
  final String adminActivatedOn;


  ModelAdmin({
      // required this.adminId,
      required this.adminName,
      // required this.adminLetter,
      required this.adminContact,
      required this.adminRole,
      this.adminStatusText = 'Status:',
      required this.adminStatus,
      this.adminActivetedOnText = 'Activated On:',
      required this.adminActivatedOn
  });
}

