import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});//constructor function
  @override
  State<QuestionsScreen> createState() {
   return _QuestionsScreenState();
  }
}
class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build( context) {
   return const Text('Questions Screen');
  }
}