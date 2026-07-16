import 'package:flutter/material.dart';
import '../../widgets/dashboard_card.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const DashboardCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.9),
              color.withOpacity(.6),
            ],
          ),
        ),
        children: const [

  DashboardCard(
    title: "Active Members",
    value: "258",
    icon: Icons.people,
    color: Colors.green,
  ),

  DashboardCard(
    title: "Today's Attendance",
    value: "173",
    icon: Icons.qr_code_scanner,
    color: Colors.blue,
  ),

  DashboardCard(
    title: "Pending Renewal",
    value: "07",
    icon: Icons.warning,
    color: Colors.orange,
  ),

  DashboardCard(
    title: "Upcoming Renewal",
    value: "19",
    icon: Icons.calendar_month,
    color: Colors.deepPurple,
  ),

  DashboardCard(
    title: "Today's Income",
    value: "245K",
    icon: Icons.attach_money,
    color: Colors.teal,
  ),

  DashboardCard(
    title: "Today's Expense",
    value: "61K",
    icon: Icons.money_off,
    color: Colors.red,
  ),

],
