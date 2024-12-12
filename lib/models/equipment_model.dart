class Equipment {
  final String id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfCalories;
  final bool handOvered;

  Equipment(
      {required this.id,
      required this.equipmentName,
      required this.equipmentDescription,
      required this.equipmentImageUrl,
      required this.noOfCalories,
      required this.handOvered});
}
