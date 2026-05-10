import 'package:isar/isar.dart';

part 'measures.g.dart'; 

@collection
class Measures {
  // Unique Measures ID
  Id id = Isar.autoIncrement;

  // Date in which the measures were taken
  late DateTime date;

  // in likograms (kg)
  double? weight;

  // in centimeters (cm)
  double? neck;
  double? shoulders;
  double? chest;
  double? waist;
  double? hips;
  double? leftArm;
  double? rightArm;
  double? leftForearm;
  double? rightForearm;
  double? leftWrist;
  double? rightWrist;
  double? leftThigh;
  double? rightThigh;
  double? leftCalf;
  double? rightCalf;
}