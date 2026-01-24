import 'package:flutter/material.dart';
import '../widget/app_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const ScreenRout = 'Filters Screen';

  final Function changeFilters;
  final Map<String, bool> currntFilter;

  const FiltersScreen({
    super.key,
    required this.changeFilters,
    required this.currntFilter,
  });

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  late bool isSummer;
  late bool isWinter;
  late bool isForFamailys;

  @override
  void initState() {
    // TODO: implement initState
    isSummer = widget.currntFilter['Summer']!;
    isWinter = widget.currntFilter['Winter']!;
    isForFamailys = widget.currntFilter['Familys']!;
    super.initState();
  }

  SwitchListTile BuildSwitchTile(
    String title,
    String subTitle,
    currntValue,
    Function(bool value) update,
  ) {
    return SwitchListTile(
      activeColor: Colors.orange,
      title: Text(title),
      subtitle: Text(subTitle),
      value: currntValue,
      onChanged: update,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Map<String, bool> filters = {
                'Summer': isSummer,
                'Winter': isWinter,
                'Familys': isForFamailys,
              };
              widget.changeFilters(filters);
            },
            icon: Icon(Icons.save),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'الفلترة',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                BuildSwitchTile(
                  'الرحلات الصيفية فقط',
                  'عرض الرحلات المناسبة لفصل الصيف فقط',
                  isSummer,
                  (value) {
                    setState(() {
                      isSummer = value;
                    });
                  },
                ),
                BuildSwitchTile(
                  'الرحلات الشتوية فقط',
                  'عرض الرحلات المناسبة لفصل الشتاء فقط',
                  isWinter,
                  (value) {
                    setState(() {
                      isWinter = value;
                    });
                  },
                ),
                BuildSwitchTile(
                  'الرحلات العائلية فقط',
                  'عرض الرحلات المناسبة للعائلة فقط',
                  isForFamailys,
                  (value) {
                    setState(() {
                      isForFamailys = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
