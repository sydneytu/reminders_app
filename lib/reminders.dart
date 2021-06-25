import 'package:reminders/reminder.dart';
import 'package:flutter/material.dart';

class Reminders {
  List<Reminder> remindersList = [
    Reminder(
        title: 'Coffee',
        text: 'Prepare hot coffee for friends',
        color: Color(0xFF7ECCFF)),
    Reminder(
        title: 'Certification',
        text: 'Call instructor for complete details.',
        color: Colors.orange),
    Reminder(
        title: 'Team Meeting',
        text: 'Planning sprint log for next product design update.',
        color: Colors.pink[200]),
    Reminder(
        title: 'Birthday Party Preparations',
        text: 'Prepare hot coffee for friends',
        color: Color(0xFF1ECDC4)),
    Reminder(
        title: 'Coffee',
        text: 'Prepare hot coffee for friends',
        color: Color(0xFF1ECDC4)),
    Reminder(
        title: 'Appointment',
        text: 'Health check up with physician.',
        color: Colors.red[200]),
    Reminder(
        title: 'Certification',
        text: 'Call instructor for complete details.',
        color: Colors.orange),
    Reminder(
        title: 'Team Meeting',
        text: 'Planning sprint log for next product design update.',
        color: Colors.pink[200]),
    Reminder(
        title: 'Birthday Party Preparations',
        text: 'Prepare hot coffee for friends',
        color: Color(0xFF1ECDC4)),
    Reminder(
        title: 'Coffee',
        text: 'Prepare hot coffee for friends',
        color: Color(0xFF7ECCFF)),
    Reminder(
        title: 'Appointment',
        text: 'Health check up with physician.',
        color: Colors.red[200]),
    Reminder(
        title: 'Coffee',
        text: 'Prepare hot coffee for friends',
        color: Color(0xFF1ECDC4)),
  ];

  List<Reminder> getReminders() {
    return remindersList;
  }

  Reminder getReminder(int index) {
    return remindersList[index];
  }

  void addReminder(Reminder newReminder) {
    remindersList.add(newReminder);
  }
}
