abstract class ICarEU {
  String getModel();
  double getWidth();
  double getLength();
  double getHeight();
  double getTopSpeed();
  double getRange();
  void getCarFeatures();
}

abstract class ICarUSA {
  void getCarFeatures();
  void getOriginalFeatures();
}

class OriginalCar implements ICarEU {
  String carModel;
  double width;
  double length;
  double height;
  double topSpeed;
  double range;
  
  OriginalCar(this.carModel, this.width, this.length, this.height, this.topSpeed, this.range);

  @override
  String getModel() {
    return carModel;
  }
  
  @override
  double getWidth() {
    return width;
  }

  @override
  double getLength() {
    return length;
  }

  @override
  double getHeight() {
    return height;
  }

  @override
  double getTopSpeed() {
    return topSpeed;
  }

  @override
  double getRange() {
    return range;
  }

  @override
  void getCarFeatures() {
    print(
      '===' * 20
      +'\n\nModel: $carModel\n'
      +'___'*20
      +'\nwidth: $width mm'
      +'\nlength: $length mm'
      +'\nheight: $height mm'
      +'\ntopSpeed: $topSpeed km/h'
      +'\nrange: $range km'
    );
  }
}

class ConvertedCar implements ICarUSA {
  ICarEU originalCar;
  String carModel = 'Model';
  double width = 0;
  double length = 0;
  double height = 0;
  double topSpeed = 0;
  double range = 0;

  ConvertedCar(this.originalCar) {
    carModel = originalCar.getModel();
    width = (originalCar.getWidth()/25.4).floorToDouble();
    length = (originalCar.getLength()/25.4).floorToDouble();
    height = (originalCar.getHeight()/25.4).floorToDouble();
    topSpeed = (originalCar.getTopSpeed()/1.609).floorToDouble();
    range = (originalCar.getRange()/1.609).floorToDouble();
  }

  @override
  void getCarFeatures() {
    print(
      '===' * 20
      +'\n\nModel: $carModel\n'
      +'___'*20
      +'\nwidth: $width inches'
      +'\nlength: $length inches'
      +'\nheight: $height inches'
      +'\ntopSpeed: $topSpeed mp/h'
      +'\nrange: $range miles'
    );
  }

  @override
  void getOriginalFeatures() {
    originalCar.getCarFeatures();
  }
}