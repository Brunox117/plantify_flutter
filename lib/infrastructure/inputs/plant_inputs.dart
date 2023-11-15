
import 'package:formz/formz.dart';

enum NameError { empty }

enum WaterHourError { empty, format }

class PlantName extends FormzInput<String, NameError> {
  const PlantName.pure() : super.pure('');
  const PlantName.dirty([String value = '']) : super.dirty(value);

  String? get errorMessage {
    if (error == NameError.empty) {
      return 'Porfavor ingresa un nombre';
    }
    return null;
  }

  @override
  NameError? validator(String? value) {
    return value?.isNotEmpty == true ? null : NameError.empty;
  }
}

class WaterHour extends FormzInput<String, WaterHourError> {
  const WaterHour.pure() : super.pure('');
  const WaterHour.dirty([String value = '']) : super.dirty(value);

  String? get errorMessage {
    if (error == WaterHourError.empty) {
      return 'Porfavor ingresa una hora';
    }
    if (error == WaterHourError.format) {
      return 'Porfavor ingresa una hora valida';
    }
    return null;
  }

  @override
  WaterHourError? validator(String? value) {
    if (value?.isEmpty == true) {
      return WaterHourError.empty;
    }
    //TODO validate hour format
    return null;
  }
}