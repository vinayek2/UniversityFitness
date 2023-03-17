import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class input extends StatefulWidget {
  const input({super.key});

  @override
  State<input> createState() => _inputState();
}
//defualt padding = 16

class _inputState extends State<input> {
  // final _formKey = GlobalKey<FormState>();
  // TextEditingController _nameController = new TextEditingController();

  // void initState() {
  //   super.initState();
  //   _nameController = TextEditingController();
  // }

  // void dispose() {
  //   _nameController.dispose();
  //   super.dispose();
  // }

  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<DateTime?> dateSub = ValueNotifier(null);
    TextEditingController _className = new TextEditingController();
    TextEditingController _classDescription = new TextEditingController();
    TextEditingController _startTime = new TextEditingController();
    TextEditingController _endTime = new TextEditingController();

    return Scaffold(
        backgroundColor: Colors.orange,

        // appBar color Color.fromARGB(255, 5, 64, 112),

        appBar: AppBar(
          centerTitle: true,
          title: Text("Enter Your Schedule"),
          backgroundColor: Color.fromARGB(255, 5, 64, 112),
        ),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTextField(
                      controller: _className, hint: "Enter class name"),
                  SizedBox(
                    height: 20,
                  ),
                  buildTextField(
                      controller: _classDescription,
                      hint: "Enter a description"),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    ' Enter Date for Class ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  ValueListenableBuilder<DateTime?>(
                      valueListenable: dateSub,
                      builder: (context, dateVal, child) {
                        return InkWell(
                            splashColor: Colors.white,
                            onTap: () async {
                              DateTime? date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2050),
                                  currentDate: DateTime.now(),
                                  initialEntryMode:
                                      DatePickerEntryMode.calendar,
                                  initialDatePickerMode: DatePickerMode.day,
                                  builder: (context, child) {
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                          colorScheme: const ColorScheme.light(
                                        primary:
                                            Color.fromARGB(213, 7, 69, 184),
                                        onSurface:
                                            Color.fromARGB(208, 6, 77, 134),
                                      )),
                                      child: child!,
                                    );
                                  });
                              dateSub.value = date;
                            },
                            child: buildDateTimePicker(
                                dateVal != null ? convertDate(dateVal) : ''));
                      }),

                  Text("Enter your start time"),

                  ElevatedButton(
                    child: Text('${time.hour}:${time.minute}'),
                    onPressed: () async {
                      TimeOfDay? newTime = await showTimePicker(
                        context: context,
                        initialTime: time,
                      );

                      if (newTime == null) return;

                      setState(() {
                        time = newTime;
                      });
                    },
                  ),
                  Text("Enter your end time"),

                  ElevatedButton(
                    child: Text('${time.hour}:${time.minute}'),
                    onPressed: () async {
                      TimeOfDay? newTime = await showTimePicker(
                        context: context,
                        initialTime: time,
                      );

                      if (newTime == null) return;

                      setState(() {
                        time = newTime;
                      });
                    },
                  ),

                  //buildTextField(controller: _startTime, hint: "Enter your start time"),
                  const SizedBox(
                    height: 55,
                  ),

                  FloatingActionButton.extended(
                    label: Row(
                      children: [Text('Add Class'), Icon(Icons.add)],
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => input()));
                    },
                  ),
                  //buildTextField(controller: _endTime, hint: "Enter your end time"),
                ]),
          ),
        ));
  }
}

String convertDate(DateTime dateTime) {
  return DateFormat('MM/dd/yyyy').format(dateTime);
}

Widget buildDateTimePicker(String data) {
  return ListTile(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side:
          const BorderSide(color: Color.fromARGB(255, 5, 64, 112), width: 1.5),
    ),
    title: Text(data),
    trailing: const Icon(
      Icons.calendar_today,
      color: Color.fromARGB(255, 5, 64, 112),
    ),
  );
}

Widget buildTextField(
    {String? hint, required TextEditingController controller}) {
  return TextField(
    controller: controller,
    textCapitalization: TextCapitalization.words,
    decoration: InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(255, 255, 255, 255),
      labelText: hint ?? '',
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 1.5),
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
    ),
  );
}
