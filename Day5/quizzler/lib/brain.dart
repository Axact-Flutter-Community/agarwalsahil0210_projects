import 'question.dart';

class Brain{
  int _qno =0;
  List<Question> _qbank=[
    Question('Mahendra Singh Dhoni played 7 finals in the IPL', false),
    Question('AB de Villiers scored the fastest hundred in the IPL', false),
    Question('CSK successfully defended its title in the IPL once', true),
    Question('Virat Kohli scored four hundreds in the 2016 IPL', true),
    Question('Yusuf Pathanhit the winning runs for Rajasthan Royals in the 2008 IPL', false),
    Question('Parthiv Patel represented 5 teams before IPL 2018', false),
    Question('Rohit Sharma has won the most number of IPL titles as a captain', true),
    Question('CSK won IPL title in the year 2012', false),
    Question('In the year 2014, Glenn Maxwell won the player of the series', true),
    Question('Lasith Malinga has the most number of wickets in ipl', true),
    Question('Lasith Malinga has bowled the most number of dot balls in the IPL', false),
    Question('17 hat-tricks has taken place in IPL till now', true),
    Question('Suresh Raina scored the first century in the IPL in 2008', false),
    Question('Virat Kohli holds the record for the highest score in an IPL match', false),
    Question('Ricky Ponting is the current head coach of the Delhi Capitals', true),

  ];
  void nextQuestion(){
    if(_qno<_qbank.length-1)
      _qno++;
  }

  String getQuestion(){
    return _qbank[_qno].questionText;
  }

  bool getAnswer(){
    return _qbank[_qno].ans;
  }

  bool isDone(){
    if(_qno>=_qbank.length-1)
      return true;
    else
      return false;
  }

  void reset(){
    _qno = 0;
  }
}