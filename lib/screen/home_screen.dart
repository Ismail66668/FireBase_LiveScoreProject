import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fire/model_class/live_score_model_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<LiveScoreModelClass> _liveScoreList = [];
  final FirebaseFirestore db = FirebaseFirestore.instance;
  // bool _inProgess = false;
  // @override
  // void initState() {
  //   super.initState();
  //   _getLiveScoreList();
  // }

  // Future<void> _getLiveScoreList() async {
  //   _liveScoreList.clear();
  //   _inProgess = true;
  //   setState(() {});
  //   final QuerySnapshot snapshot = await db.collection('football').get();
  //   for (QueryDocumentSnapshot doc in snapshot.docs) {
  //     LiveScoreModelClass liveScoreModel = LiveScoreModelClass.fromJson(
  //         doc.id, doc.data() as Map<String, dynamic>);

  //     _liveScoreList.add(liveScoreModel);
  //   }
  //   _inProgess = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lives Score App', style: TextStyle(fontSize: 25)),
      ),
      body: Expanded(
          child: StreamBuilder(
              stream: db.collection('football').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                if (snapshot.hasData == false) {
                  return const SizedBox();
                }
                _liveScoreList.clear();
                for (QueryDocumentSnapshot doc in snapshot.data!.docs) {
                  LiveScoreModelClass liveScoreModel =
                      LiveScoreModelClass.fromJson(
                          doc.id, doc.data() as Map<String, dynamic>);

                  _liveScoreList.add(liveScoreModel);
                }

                return ListView.builder(
                  itemCount: _liveScoreList.length,
                  itemBuilder: (context, index) {
                    LiveScoreModelClass myindex = _liveScoreList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 8,
                        backgroundColor:
                            myindex.isRunning ? Colors.green : Colors.grey,
                      ),
                      title: Text(myindex.title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(myindex.team1),
                          Text(myindex.team2),
                          Text(myindex.winnerTeam),
                        ],
                      ),
                      trailing:
                          Text('${myindex.team1score} ${myindex.team2score}'),
                    );
                  },
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          LiveScoreModelClass liveScoreModelClass = LiveScoreModelClass(
              title: 'Spa vs Mar',
              isRunning: true,
              team1: 'Spane',
              team2: 'Morcco',
              team1score: 3,
              team2score: 2,
              winnerTeam: 'Morcco');
          db
              .collection("football")
              .doc(liveScoreModelClass.title)
              .set(liveScoreModelClass.toJson());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
