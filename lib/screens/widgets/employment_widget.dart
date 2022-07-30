import 'package:flutter/material.dart';
import 'package:portfolio/models/employment_model.dart';

class EmploymentWidget extends StatefulWidget {
  final Employment employmentData;

  const EmploymentWidget({Key? key, required this.employmentData})
      : super(key: key);

  @override
  State<EmploymentWidget> createState() => _EmploymentWidgetState();
}

class _EmploymentWidgetState extends State<EmploymentWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Icon(
                Icons.work,
                size: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  widget.employmentData.companyName,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: screenSize.width > 1200
              ? Row(
                  children: [
                    const Icon(
                      Icons.badge,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        widget.employmentData.positionTitle,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.calendar_today,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${widget.employmentData.startDate} - ${widget.employmentData.endDate}",
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.badge,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            widget.employmentData.positionTitle,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${widget.employmentData.startDate} - ${widget.employmentData.endDate}",
                        ),
                      ],
                    ),
                  ],
                ),
        ),
        const Divider(),
        SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.employmentData.achievements.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_forward,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(widget.employmentData.achievements[index],
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
