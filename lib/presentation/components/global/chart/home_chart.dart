import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeChart extends StatelessWidget {
  const HomeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
          ),
        ),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              interval: 1,
              getTitlesWidget: bottomTitleWidgets,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 32,
              interval: 1,
              getTitlesWidget: leftTitleWidgets,
            ),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: const Color(0xff4af699),
            barWidth: 8,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: [
              FlSpot(1, 1),
              FlSpot(2, 1.5),
              FlSpot(3, 1.4),
              FlSpot(4, 3.4),
              FlSpot(5, 9),
              FlSpot(6, 3),
              FlSpot(7, 4),
              FlSpot(8, 5),
              FlSpot(9, 6),
              FlSpot(10, 7),
              FlSpot(11, 6),
              FlSpot(12, 9),
            ],
          ),
          LineChartBarData(
            isCurved: true,
            color: Colors.blue,
            barWidth: 8,
            isStrokeCapRound: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
            spots: [
              FlSpot(1, 3),
              FlSpot(2, 4),
              FlSpot(3, 5),
              FlSpot(4, 6),
              FlSpot(5, 2),
              FlSpot(6, 3),
              FlSpot(7, 4),
              FlSpot(8, 5),
              FlSpot(9, 4),
              FlSpot(10, 3),
              FlSpot(11, 2),
              FlSpot(12, 1),
            ],
          )
        ],
        minX: 0,
        maxX: 13,
        maxY: 10,
        minY: 0,
      ),
    );
  }

    Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('SEPT', style: style);
        break;
      case 7:
        text = const Text('OCT', style: style);
        break;
      case 12:
        text = const Text('DEC', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 3:
        text = '2m';
        break;
      case 5:
        text = '3m';
        break;
      case 7:
        text = '5m';
        break;
      case 9:
        text = '6m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

}
