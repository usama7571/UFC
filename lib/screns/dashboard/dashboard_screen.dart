import 'package:flutter/material.dart';
import '../members/member_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          /// Sidebar
          Container(
            width: 240,
            color: const Color(0xff111827),
            child: Column(
              children: [

                const SizedBox(height: 30),

                const Icon(
                  Icons.fitness_center,
                  size: 70,
                  color: Colors.amber,
                ),

                const SizedBox(height: 10),

                const Text(
                  "UFC",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Divider(),

                _menu(Icons.dashboard,"Dashboard"),
                _menu(Icons.people,"Members"),
                _menu(Icons.qr_code_scanner,"Attendance"),
                _menu(Icons.restaurant_menu,"Diet Plans"),
                _menu(Icons.bar_chart,"Reports"),
                _menu(Icons.store,"Store"),
                _menu(Icons.person,"Staff"),
                _menu(Icons.settings,"Settings"),

                const Spacer(),

                _menu(Icons.logout,"Logout"),

                const SizedBox(height:20)

              ],
            ),
          ),
          Widget menuItem(
  BuildContext context,
  IconData icon,
  String title,
  Widget screen,
) {
  return ListTile(
    leading: Icon(icon, color: Colors.white),
    title: Text(title),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => screen,
        ),
      );
    },
  );
}

          /// Main Screen

          Expanded(

            child: Column(

              children: [

                Container(
                  height:70,
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  color: const Color(0xff1E293B),

                  child: const Row(

                    children: [

                      Text(
                        "USMAN FITNESS CLUB",
                        style: TextStyle(
                          fontSize:24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Spacer(),

                      Icon(Icons.notifications),

                      SizedBox(width:20),

                      CircleAvatar(
                        child: Icon(Icons.person),
                      )

                    ],

                  ),

                ),

                Expanded(
                  Padding(
  padding: const EdgeInsets.all(20),
  child: Text(
    "Welcome Back, TEST 👋",
    style: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
  ),
),

                  child: Padding(
                    padding: const EdgeInsets.all(20),

                    child: GridView.count(

                      crossAxisCount:3,
                      crossAxisSpacing:20,
                      mainAxisSpacing:20,

                      children: const [

                        DashboardCard(
                          title:"Active Members",
                          value:"258",
                          icon:Icons.people,
                        ),

                        DashboardCard(
                          title:"Today's Attendance",
                          value:"173",
                          icon:Icons.qr_code_scanner,
                        ),

                        DashboardCard(
                          title:"Upcoming Renewal",
                          value:"19",
                          icon:Icons.calendar_month,
                        ),

                        DashboardCard(
                          title:"Income",
                          value:"Rs.245,000",
                          icon:Icons.attach_money,
                        ),

                        DashboardCard(
                          title:"Expenses",
                          value:"Rs.61,000",
                          icon:Icons.money_off,
                        ),

                        DashboardCard(
                          title:"Pending Renewal",
                          value:"7",
                          icon:Icons.warning,
                        ),

                      ],

                    ),

                  ),

                )

              ],

            ),

          )

        ],
      ),
    );
  }

  static Widget _menu(IconData icon,String title){

    return ListTile(

      leading: Icon(icon,color: Colors.white),

      title: Text(title),

      onTap: (){

      },

    );

  }

}
menuItem(
  context,
  Icons.people,
  "Members",
  const MemberScreen(),
),
menuItem(
  context,
  Icons.dashboard,
  "Dashboard",
  const DashboardScreen(),
),

class DashboardCard extends StatelessWidget{

  final String title;
  final String value;
  final IconData icon;

  const DashboardCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context){

    return Card(

      child: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              size:45,
              color: Colors.amber,
            ),

            const SizedBox(height:15),

            Text(
              value,
              style: const TextStyle(
                fontSize:28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height:10),

            Text(title)

          ],

        ),

      ),

    );

  }

}
