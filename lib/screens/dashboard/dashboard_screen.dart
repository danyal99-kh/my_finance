import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_finance/core/constants/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.foregroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "داشبورد مالی",
          style: GoogleFonts.vazirmatn(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildBalanceCard(),
            SizedBox(height: 20),
            _buildMiniCards(),
            SizedBox(height: 20),
            _buildShortcutsGrid(),
            SizedBox(height: 20),
            _buildTipCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[850],
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white70),
              onPressed: () {
                // رفتن به خانه
              },
            ),
            SizedBox(width: 10), // فضای خالی وسط برای دکمه شناور
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white70),
              onPressed: () {
                // رفتن به تنظیمات
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25), // هرچی عدد کمتر، گوشه تیزتر
        ),
        backgroundColor: Colors.teal[700],
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          // افزودن تراکنش جدید
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBalanceCard() {
    return Card(
      color: Colors.teal[700],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("دارایی کل", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 8),
                Text(
                  "45,000,000 تومان",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(Icons.account_balance_wallet, color: Colors.white, size: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildMiniCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildMiniCard(
          "درآمد امروز",
          "200,000",
          Icons.arrow_downward,
          Colors.green,
        ),
        _buildMiniCard(
          "هزینه امروز",
          "150,000",
          Icons.arrow_upward,
          Colors.red,
        ),
      ],
    );
  }

  Widget _buildMiniCard(
    String title,
    String amount,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: Card(
        color: Colors.grey[850],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(icon, color: color),
              SizedBox(height: 8),
              Text(title, style: TextStyle(color: Colors.white70)),
              SizedBox(height: 4),
              Text("$amount تومان", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShortcutsGrid() {
    List<Map<String, dynamic>> items = [
      {'icon': Icons.add, 'label': 'افزودن'},
      {'icon': Icons.list, 'label': 'لیست تراکنش'},
      {'icon': Icons.pie_chart, 'label': 'گزارش'},
      {'icon': Icons.flag, 'label': 'اهداف'},
    ];

    return GridView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[850],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    items[index]['icon'],
                    size: 35,
                    color: Colors.tealAccent,
                  ),
                  SizedBox(height: 8),
                  Text(
                    items[index]['label'],
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTipCard() {
    return Card(
      color: Colors.indigo.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.lightbulb, color: Colors.amberAccent),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                "نکته امروز: همیشه اول پس‌انداز کن، بعد خرج کن.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
