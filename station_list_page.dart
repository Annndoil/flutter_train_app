import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final String title;
  final bool isDeparture;

  const StationListPage({
    super.key,
    required this.title,
    required this.isDeparture,
  });

  @override
  Widget build(BuildContext context) {
    // 임시 역 데이터
    final List<String> allStations = [
      '서울',
      '부산',
      '대구',
      '인천',
      '광주',
      '대전',
      '울산',
      '제주',
      '수원',
      '고양',
      '용인',
      '창원',
      '포항',
      '전주',
      '천안',
      '안산',
      '안양',
      '성남',
      '부천',
      '광명',
    ];

    // 이전 페이지에서 선택된 역 가져오기
    final selectedStation =
        ModalRoute.of(context)!.settings.arguments as String?;

    // 선택된 역을 제외한 역 목록 생성
    final stations =
        allStations.where((station) => station != selectedStation).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: stations.length,
        itemBuilder: (context, index) {
          final station = stations[index];
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, station);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  station,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
