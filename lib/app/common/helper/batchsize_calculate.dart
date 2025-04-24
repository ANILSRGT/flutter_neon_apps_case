import 'dart:io' show Platform;

class BatchsizeCalculate {
  const BatchsizeCalculate._();

  static int calculate() {
    final processorCount = Platform.numberOfProcessors;

    // Temel değer: mobil cihazlarda işlemci sayısına göre ayarlıyoruz
    if (processorCount <= 4) {
      return 5; // düşük güçlü cihazlar
    } else if (processorCount <= 8) {
      return 10; // orta seviye cihazlar
    } else {
      return 15; // yüksek güçlü cihazlar
    }
  }
}
