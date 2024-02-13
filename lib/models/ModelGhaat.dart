

class GhaatData {
  static final modelghaats = [
    ModelGhaat(
      ghaatName: 'AINGAWA BALU GHAAT', 
      ghaatLessee: 'PRIME VISION IND PVT LTD', 
      regNo: '317022070088',
      ghaatStatus: 'ACTIVE',  
      ghaatActivatedTill: 'Fab 14 2020',
    )
  ]; 
}


class ModelGhaat {
  // final String ghaatId;
  final String ghaatName;
  final String ghaatLessee;
  final String regNo;
  // final String ghaatAddress;
  final String ghaatStatusText;
  final String ghaatStatus;
  final String ghaatActivetedTillText;
  final String ghaatActivatedTill;


  ModelGhaat({
  // required this.ghaatId,
  required this.ghaatName,
  required this.ghaatLessee,
  required this.regNo,
  // required this.ghaatAddress,
  this.ghaatStatusText = 'Status:',
  required this.ghaatStatus,
  this.ghaatActivetedTillText = 'Active Till:',
  required this.ghaatActivatedTill,
  });
}