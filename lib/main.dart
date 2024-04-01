import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Korean Tutor',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), // 좌우 간격 조절
            child: ElevatedButton(
              onPressed: () {
                // "About Us" 버튼 눌렀을 때
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
              child: Text('About Us'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), // 좌우 간격 조절
            child: ElevatedButton(
              onPressed: () {
                // "Teachers" 버튼 눌렀을 때
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherPage()),
                );
              },
              child: Text('Tutors'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), // 좌우 간격 조절
            child: ElevatedButton(
              onPressed: () {
                // "Reviews" 버튼 눌렀을 때
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReviewPage()),
                );
              },
              child: Text('Reviews'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE3D7), // 색 설정
                  borderRadius: BorderRadius.circular(10), // 박스의 모서리를 둥글게 설정
                ),
                padding: const EdgeInsets.only(top: 10, bottom: 500, left: 650, right: 650), // 내부 패딩 설정
                child: Column(
                  children: [
                    Text("회사 소개", style: TextStyle(fontSize: 25)),
                    Text("등급별 한국어 튜터링"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25, bottom: 25),
                child: Column(
                  children: [
                    Text("레슨 방식 소개", style: TextStyle(fontSize:  25)),
                    SizedBox(height: 20, width: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Image.network('https://media.istockphoto.com/id/1224485468/ko/%EB%B2%A1%ED%84%B0/%ED%8A%9C%ED%84%B0-%EC%BB%A8%EC%85%89-%EC%95%84%EC%9D%B4%EC%BD%98%EC%9E%85%EB%8B%88%EB%8B%A4-%ED%8A%9C%ED%84%B0%EB%A7%81-%EA%B5%90%EC%9C%A1-%EA%B0%9C%EC%9D%B8-%EB%A0%88%EC%8A%A8%EC%9D%80-%ED%95%99%EC%83%9D%EC%9D%98-%ED%95%99%EC%97%85-%EC%84%B1%EA%B3%BC%EB%A5%BC-%ED%96%A5%EC%83%81%EC%8B%9C%ED%82%B5%EB%8B%88%EB%8B%A4-%EB%8C%80%ED%95%99-%EC%A4%80%EB%B9%84-%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4-%EC%96%87%EC%9D%80-%EB%9D%BC%EC%9D%B8-%EA%B7%B8%EB%A6%BC-%EB%B2%A1%ED%84%B0-%EC%A0%88%EC%97%B0-%EC%9C%A4%EA%B3%BD%EC%84%A0-%EB%8F%84%EB%A9%B4-%ED%8E%B8%EC%A7%91-%EA%B0%80%EB%8A%A5%ED%95%9C-%EC%8A%A4%ED%8A%B8%EB%A1%9C%ED%81%AC.jpg?s=170667a&w=0&k=20&c=ZZQgyGxByi0c5AncVskcvuO1uheB6JMNvKm4b_a6J7E=')
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("레슨 받으러 가기"),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 25),
                      child: Column(
                        children: [
                          Text("튜터 소개", style: TextStyle(fontSize: 25)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('소개 페이지'),
      ),
      body: Center(
        child: Text('소개 페이지'),
      ),
    );
  }
}

// Teacher 클래스 정의
class Teacher {
  final String name;
  final String contact;

  Teacher({
    required this.name,
    required this.contact,
  });
}

class TeacherPage extends StatelessWidget {
  // 튜터 정보 목록
  final List<Teacher> teachers = [
    Teacher(name: '튜터1', contact: '카카오톡 오픈방 링크'),
    Teacher(name: '튜터2', contact: '카카오톡 오픈방 링크'),
    Teacher(name: '튜터3', contact: '카카오톡 오픈방 링크'),
    Teacher(name: '튜터4', contact: '카카오톡 오픈방 링크'),
    Teacher(name: '튜터5', contact: '카카오톡 오픈방 링크'),
    Teacher(name: '튜터6', contact: '카카오톡 오픈방 링크'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('튜터 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "튜터 소개",
                style: TextStyle(fontSize: 25),
              ),
              Text("튜터 사진을 클릭하여 수강신청하기!", style: TextStyle(fontSize: 20)),
              Expanded(
                child: GridView.builder(
                  itemCount: teachers.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 한 행에 보여줄 item 개수
                    childAspectRatio: 1 / 1.3, // item의 가로와 세로의 비율
                    mainAxisSpacing: 100, // 수평 간격
                    crossAxisSpacing: 100, // 수직 간격
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // 각 튜터에 대한 GestureDetector 반환
                    return buildTeacherGestureDetector(context, teachers[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 각 튜터에 대한 GestureDetector 생성
  Widget buildTeacherGestureDetector(BuildContext context, Teacher teacher) {
    return GestureDetector(
      onTap: () {
        // 클릭 시 튜터 정보 표시
        showTeacherInfo(context, teacher);
      },
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2021/04/25/14/31/man-6206549_960_720.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5, width: 6),
          Text(
            teacher.name, // 튜터의 이름 표시
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  // 튜터 정보를 표시하는 다이얼로그
  void showTeacherInfo(BuildContext context, Teacher teacher) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(teacher.name),
          content: Text('연락처: ${teacher.contact}'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('닫기'),
            ),
          ],
        );
      },
    );
  }
}




class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  String review = '';
  int rating = 0; // 초기 별점

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('리뷰 페이지'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '리뷰를 작성해주세요',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                items: <String>['튜터 1', '튜터 2', '튜터 3', '튜터 4', '튜터 5', '튜터 6']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // 선택한 튜터 처리
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '튜터를 선택해주세요',
                ),
              ),
              SizedBox(height: 20),
              Text(
                '별점을 선택해주세요',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      setState(() {
                        rating = index + 1;
                      });
                    },
                  );
                }),
              ),
              SizedBox(height: 20),
              TextFormField(
                maxLines: null, // 다중 라인 입력 가능하도록 설정
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: '튜터에 대한 리뷰를 작성해주세요!',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    review = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // 리뷰를 작성한 후의 로직
                  // 백엔드
                },
                child: Text('작성 완료'),
              ),
              SizedBox(height: 20),
              Text(
                '작성된 리뷰: $review', // 작성된 리뷰
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
