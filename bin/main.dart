import 'package:adapter/adapter.dart';

void main() {
  OriginalCar teslaModelS = OriginalCar('Tesla Model S', 1964, 4980, 1440, 280, 580);
  teslaModelS.getCarFeatures();
  ConvertedCar teslaModelSConverted = ConvertedCar(teslaModelS);
  teslaModelSConverted.getCarFeatures();
  teslaModelSConverted.getOriginalFeatures();
}
