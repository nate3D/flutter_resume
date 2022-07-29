import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/employment_model.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(
                Icons.work,
                color: kGrey,
                size: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  widget.employmentData.companyName,
                  style: kSectionTitleText,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(
                Icons.badge,
                color: kGrey,
                size: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.employmentData.positionTitle,
              ),
              const SizedBox(
                width: 10,
              ),
              const Spacer(),
              Icon(
                Icons.calendar_today,
                color: kGrey,
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
        ),
        const Divider(),
        SizedBox(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.employmentData.achievements.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: kGrey,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        widget.employmentData.achievements[index],
                        style: kDetailsText,
                      ),
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
