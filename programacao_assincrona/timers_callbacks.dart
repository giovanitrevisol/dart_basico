import 'dart:async';

//timers e callbacks

int counter = 0;

main(List<String> arguments) {
  Duration duration = Duration(seconds: 2);
  Timer.periodic(duration, timeout);

  print('Iniciado ${getTime()}');
}

void timeout(Timer timer) {
  print('Espera: ${getTime()}');
  counter++;
  if (counter >= 5) {
    timer.cancel();
  }
}

getTime() {
  DateTime dt = DateTime.now();
  return dt.toString();
}
