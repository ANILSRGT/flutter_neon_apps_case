enum LottiesEnum {
  loading('loading');

  const LottiesEnum(this.fileName);

  final String fileName;

  String get path => 'assets/lotties/$fileName.json';
}
