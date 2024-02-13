class PassData {
  static final modelpasses = [
    ModelPass(
      passNo: '10-2-77758', 
      passVehNo: 'UP32KN3540(DUMPER(12))', 
      passDestination: 'SAHARANPUR', 
      passEntry: 'JAN 28 2023(12:02 PM)', 
      passOrderQty: '24.00 Tons', 
      passMaterialType: 'MORRUM',
    )
  ]; 
}
class ExitData {
  static final modelexits = [
    ModelPass(
      passNo: '15-7-45152', 
      passVehNo: 'UP32OK2023(DUMPER(12))',
      passEmm: '21321654646416',  
      passExit: 'FAB 02 2023(12:45 PM)',
      passOrderQty: '25.00 Tons',
      passMaterialType: 'MORRUM',
    )
  ];
 }


class ModelPass {
  // final String passId;
  final String passNo;
  final String passVehNo;
  final String? passDestination;
  final String? passEmm;
  final String? passEntry;
  final String? passExit;
  final String passOrderQty;
  final String passMaterialType;
  // final String passCancelRemark;


  ModelPass({
      // required this.passId,
      required this.passNo,
      required this.passVehNo,
      this.passDestination,
      this.passEmm,
      this.passEntry,
      this.passExit,
      required this.passOrderQty,
      required this.passMaterialType,
      // required this.passCancelRemark,
  });
}


