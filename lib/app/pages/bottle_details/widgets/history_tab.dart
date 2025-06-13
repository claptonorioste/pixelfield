import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/app/utils/colors.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key, required this.bottle});
  final Bottle bottle;

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      theme: TimelineThemeData(
        nodePosition: 0.1,
        connectorTheme: ConnectorThemeData(
          color: Color(btColor),
          thickness: 2.0,
        ),
        indicatorTheme: IndicatorThemeData(color: Color(btColor), size: 20.0),
      ),
      builder: TimelineTileBuilder.connected(
        contentsAlign: ContentsAlign.basic,
        connectionDirection: ConnectionDirection.before,
        itemCount: bottle.history.length,
        contentsBuilder: (_, index) => Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bottle.history[index].label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                bottle.history[index].description,
                style: TextStyle(fontSize: 14),
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Color(bgColor),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.attach_file,
                            size: 16,
                            color: Colors.white,
                          ),
                          Text('Attachments'),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        spacing: 10,
                        children: [
                          Container(width: 50, height: 50, color: Colors.grey),
                          Container(width: 50, height: 50, color: Colors.grey),
                          Container(width: 50, height: 50, color: Colors.grey),
                          Container(width: 50, height: 50, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        indicatorBuilder: (_, index) =>
            CustomPaint(size: Size(12, 12), painter: DiamondPainter()),
        connectorBuilder: (_, index, ___) =>
            SolidLineConnector(color: Color(0xFFFFC857)),
      ),
    );
  }
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(btColor)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
