import 'dart:math';

double getBMR(String gender, double weight, double height, double age) {
  double bmr;

  if (gender.toLowerCase() == "male") {
    bmr = 88.362 + 15.397 * weight + 6.799 * height - 5.677 * age;
  } else {
    bmr = 447.593 + 11.247 * weight + 5.098 * height - 4.33 * age;
  }

  return bmr;
}

double getPhysicalAct() {
  return Random().nextDouble() + 1;
}

double getTempFactor(double temp) {
  if (temp < 23) {
    return 7;
  } else if (temp < 26) {
    return 10;
  } else if (temp < 29) {
    return 13;
  } else if (temp < 32) {
    return 17;
  } else if (temp < 37) {
    return 20;
  } else {
    return 23;
  }
}

double getTDWN(double bmr, double physicalAct, double tempFactor) {
  return bmr * physicalAct + tempFactor;
}

/* void main() {
  // Example usage
  String gender = "male";
  double weight = 70.0;
  double height = 180.0;
  double age = 25.0;
  double temp = 25.0;

  double bmr = getBMR(gender, weight, height, age);
  double physicalAct = getPhysicalAct();
  double tempFactor = getTempFactor(temp);
  double tdwn = getTDWN(bmr, physicalAct, tempFactor);

  print('BMR: $bmr');
  print('Physical Activity: $physicalAct');
  print('Temperature Factor: $tempFactor');
  print('TDWN: $tdwn');
}
 */