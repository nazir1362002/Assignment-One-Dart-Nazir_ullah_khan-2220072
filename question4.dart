// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐
/// EXPECTED OUTPUT:
/// Vehicle Info: 2020 Toyota Camry (4 doors)
/// Starting the car engine...
/// Stopping the car engine...
///
/// Vehicle Info: 2021 Honda CBR (Has windshield: true)
/// Starting the motorcycle engine...
/// Stopping the motorcycle engine...
///
/// Car age: <Value> years
/// Motorcycle age: <Value> years
library;

// 1. Abstract Class Vehicle:
//    - Properties: String brand, String model, int year
//    - Abstract method: void start()
//    - Abstract method: void stop()
//    - Concrete method: void displayInfo()
abstract class Vehicle {
  Vehicle(this.brand, this.model, this.year);
  String brand;
  String model;
  int year;

  // Abstract methods
  void start();
  void stop();

  // Concrete method
  void displayInfo() {
    // TO-DO: Display vehicle information
    print('Vehecle Info:$year $brand $model');
  }

  // Add a method to calculate vehicle age (current year - vehicle year)
  int calculateAge() {
    // TO-DO: Calculate and return vehicle age
    final vAge = DateTime.now().year - year;
    return vAge;
  }
}

// 2. Concrete Classes:
//    - Car extends Vehicle
//      - Additional property: int numberOfDoors
//      - Override start() and stop() methods
class Car extends Vehicle {
  Car(super.brand, super.model, super.year, this.numberOfDoors);
  int numberOfDoors;

  @override
  void start() {
    // TO-DO: Implement car start method
    print('Starting the car engine...');
  }

  @override
  void stop() {
    // TO-DO: Implement car stop method
    print('Stopping the car engine...');
  }

  @override
  void displayInfo() {
    // TO-DO: Override to show car-specific info as shown in expected output
    print('Vehecle Info:$year $brand $model ($numberOfDoors doors)');
  }
}

//    - Motorcycle extends Vehicle
//      - Additional property: bool hasWindshield
//      - Override start() and stop() methods
class Motorcycle extends Vehicle {
  // ignore: avoid_positional_boolean_parameters
  Motorcycle(super.brand, super.model, super.year, this.hasWindshield);
  bool hasWindshield;

  @override
  void start() {
    // TO-DO: Implement motorcycle start method
    print('Starting the motorcycle engine...');
  }

  @override
  void stop() {
    // TO-DO: Implement motorcycle stop method
    print('Stoping the motorcycle engine...');
  }

  @override
  void displayInfo() {
    // TO-DO: Override to show motorcycle-specific info as shown in expected output
    print('Vehecle Info:$year $brand $model (Has Windshield:$hasWindshield)');
  }
}

void main() {
  // 3. Create a list of vehicles and demonstrate polymorphism by calling start(), stop(), and displayInfo() on each vehicle
  // TO-DO: Create a list containing one Car and one Motorcycle
  List<Vehicle> vehicles = [
    Car('Toyota', 'Camry', 2020, 4),
    Motorcycle('Honda', 'CBR', 2021, true),
  ];
  for (final v in vehicles) {
    v
      ..displayInfo()
      ..start()
      ..stop();
    print('-------');
  }

  // TO-DO: Loop through the list and call displayInfo(), start(), and stop()

  // TO-DO: Print the age of each vehicle using calculateAge()
  print('Car age:${vehicles[0].calculateAge()} years');
  print('Motorcyle age:${vehicles[1].calculateAge()} years');
}
