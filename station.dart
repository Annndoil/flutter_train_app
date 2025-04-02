class Station {
  final String name;
  final int order;

  Station({required this.name, required this.order});

  static final List<Station> stations = [
    Station(name: "수서", order: 1),
    Station(name: "동탄", order: 2),
    Station(name: "평택지제", order: 3),
    Station(name: "천안아산", order: 4),
    Station(name: "오송", order: 5),
    Station(name: "대전", order: 6),
    Station(name: "김천구미", order: 7),
    Station(name: "동대구", order: 8),
    Station(name: "경주", order: 9),
    Station(name: "울산", order: 10),
    Station(name: "부산", order: 11),
  ];
}
