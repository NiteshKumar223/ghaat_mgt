class DailyVehicleInData {
  static final modeldailyvehiclesin = [
    ModelDailyVehicle(
      vehType: 'DUMPER (14)',
      vehCountIn: '440',
      saleTon: '12296.00', 
      saleMetre: '7574.00', 
      saleFeet: '0', 
      saleBucket: '0',
    ),
  ];
}
class DailyVehicleOutData {
  static final modeldailyvehiclesout = [
    ModelDailyVehicle(
      vehType: 'DUMPER (14)',
      vehCountOut: '750',
      saleTon: '12456.00', 
      saleMetre: '7574.00', 
      saleFeet: '0', 
      saleBucket: '0',
    ),
  ];
}

class ModelDailyVehicle {
  final String vehType;
  final String? vehCountIn;
  final String? vehCountOut;
  final String saleTon;
  final String saleMetre;
  final String saleFeet;
  final String saleBucket;


  ModelDailyVehicle({
      required this.vehType,
      this.vehCountIn,
      this.vehCountOut,
      required this.saleTon,
      required this.saleMetre,
      required this.saleFeet,
      required this.saleBucket,
  });
}