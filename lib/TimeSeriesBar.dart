import 'dart:async';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:http/http.dart' as http;
import 'dart:convert';

class TimeSeriesBar extends StatefulWidget {
  @override
  _TimeSeriesBarState createState() => _TimeSeriesBarState();
}

class _TimeSeriesBarState extends State<TimeSeriesBar> {
  late Timer _timer;

  final List<Data> _buffer = [
    Data(time: 1, value: 2),
    Data(time: 1, value: 2),
    Data(time: 1, value: 2),
    Data(time: 1, value: 4),
    Data(time: 1, value: 2),
    Data(time: 16, value: 2),
    Data(time: 1, value: 2),
    Data(time: 1, value: 8),
    Data(time: 5, value: 2),
  ];
  final List<Data> _buffer2 = [];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
        const Duration(milliseconds: 400), (Timer t) => _getData());
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  List<charts.Series<Data, String>> _createSampleData() {
    return [
      charts.Series<Data, String>(
        id: 'Data',
        domainFn: (Data data, _) => data.time.toString(),
        measureFn: (Data data, _) => data.value,
        data: _buffer,
      ),
    ];
  }

  List<charts.Series<Data, int>> _createSampleData2() {
    int maxX = _buffer2.isNotEmpty ? _buffer2.last.time : 0;
    int minY = _buffer2.isNotEmpty ? _buffer2.first.value : 0;
    int maxY = _buffer2.isNotEmpty ? _buffer2.first.value : 0;

    for (var data in _buffer2) {
      if (data.value < minY) {
        minY = data.value;
      }
      if (data.value > maxY) {
        maxY = data.value;
      }
    }

    return [
      charts.Series<Data, int>(
        id: 'Data',
        domainFn: (Data data, _) => data.time,
        measureFn: (Data data, _) => data.value,
        data: _buffer2,
        domainLowerBoundFn: (Data data, _) => _buffer2.first.time,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: charts.LineChart(
              _createSampleData2(),
              animate: true,
            ),
          ),
          Expanded(
            child: charts.BarChart(
              _createSampleData(), animate: true,
              domainAxis: const charts.OrdinalAxisSpec(
                renderSpec: charts.SmallTickRendererSpec(
                  labelStyle: charts.TextStyleSpec(
                    fontSize: 0,
                    color: charts.MaterialPalette.black,
                  ),
                ),
              ),
              // domainAxis: charts.NoTicksAxisSpec<String>();,
            ),
          )
        ],
      ),
    );
  }

  void _getData() async {
    try {
      final response =
          await http.get(Uri.parse('http://192.168.29.48/dataSensor'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final data = Data.fromJson(jsonData);
        _buffer.add(data);
        _buffer2.add(data);
        if (_buffer2.length > 100) {
          _buffer2.removeAt(0);
        }
        if (_buffer.length > 40) {
          _buffer.removeAt(0);
        }
        setState(() {
          print("Buffer1: ${_buffer2.length}, Buffer2: ${_buffer.length}");
          print(jsonData);
        });
      } else {
        // throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}

class Data {
  final int time;
  final int value;

  Data({required this.time, required this.value});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      time: json['time'],
      value: json['value'],
    );
  }
}
