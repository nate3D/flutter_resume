import 'package:flutter/material.dart';
import 'package:portfolio/models/employment_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.teal;
Color kGradient2 = Colors.pinkAccent;

String imagePath = "images/Nate_ProfilePic.png";

//String data to modify
String name = "Nate Brandeburg";
String username = "Nate3D";

//Link to resume on Google Drive
String resumeLink =
    "https://www.dropbox.com/s/cwunfn92a9qsyxk/Nate_Resume.pdf?dl=0";

//Contact Email
String contactEmail = "nate@nate3d.com";

String aboutWorkExperience = '''
I solve business problems with technology.

I've worked as a linux systems administrator, a full-stack java developer, a full-stack DotNet developer, a scrum master, and a senior solutions architect.
I use this experience to take business problems and turn them into a product that is easy to use, easy to understand, and easy to maintain.
''';

String aboutMeSummary = '''
''';

String location = "Memphis, TN";
String locationUrl = "goo.gl/maps/zCGGRwNXxpsZZBVg8";
String linkedIn = "www.linkedin.com/in/nate-brandeburg/";
String website = "nate3d.com";
String github = "github.com/nate3D";
String email = contactEmail;

List<Employment> projectList = [
  Employment(
      companyName: "TheSeam",
      positionTitle: "Digital Innovation Engineer",
      startDate: "May 2021",
      endDate: "Present",
      achievements: [
        "Architected a reusable DotNet 6 solution using onion architecture design patterns with robust separation of concerns",
        "Lead the effort to implement GraphQL into .NET Core web server applications",
        "Mentored junior developers in API, database, and architecture best practices",
        "Designed and built entire Azure DevOps CI/CD pipeline utilizing custom hierarchical YAML templates",
        "Identified issues and optimized our SQL Server instances to fully utilize available system resources",
        "Rapid prototyping in Python for working with big data and 3rd party APIs with a heavy focus on Big-O optimization",
        "Implemented a change management process to move the team from Waterfall to Agile development methodologies",
      ]),
  Employment(
      companyName: "Buckman Laboratories",
      positionTitle: "Digital Innovation Engineer",
      startDate: "Aug 2019",
      endDate: "May 2021",
      achievements: [
        "Rapidly designed and developed proof-of-concept available systems and applications to get new product ideas to market quickly on a global scale",
        "Took advantage of Microsoft's PowerApps platform to decrease turnaround time on delivering proof-of-concept mobile and web applications",
        "Worked closely with key stakeholders and subject matter experts to facilitate rapid design and development of new products",
        "Utilized new technologies such as LoRaWAN for wireless communication of data at customer sites",
        "Implemented industry standard Industrial Internet-of-Things (IIoT) concepts in Microsoft Azure",
        "Produced cloud solutions in Microsoft Azure to ingest and manipulate IIoT data",
        "Coupled our cloud solutions with vendor systems via RESTful service APIs",
        "Worked closely with vendors to form partnerships and build a global supply chain",
        "Guided and trained interns to bolster their skills and improve their contributions to team efforts",
      ]),
  Employment(
      companyName: "Ubiquisoft Technologies",
      positionTitle: "Software Development Advisor",
      startDate: "Apr 2019",
      endDate: "Aug 2019",
      achievements: [
        "Oversaw all development projects and met daily with all developers (Scrum Stand-up)",
        "Advised developers on best-practices and technological tool use, especially using the IntelliJ family of products",
        "Investigated new technologies as to how they might streamline and augment our development workflow. This included a major shift in application design to the microservice architecture, specifically using Spring Boot applications leveraging a packaged Apache Tomcat instance",
        "Guided junior developers to help them build skills and grow their development abilities",
        "Improved development throughput through the implementation of Scrum methodologies and modern development practices",
        "Offered recommendations to Ubiquisoft administration on potential new-hires based on their technical interview results",
      ]),
  Employment(
      companyName: "Ubiquisoft Technologies",
      positionTitle: "Software Development Lead & Certified Scrum Master",
      startDate: "Jan 2018",
      endDate: "Apr 2019",
      achievements: [
        "Oversaw and guided a junior development team of eight team members. Made special note to learn all team member strengths and weaknesses to better utilize all team members and achieve our team goal in the most efficient manner possible",
        "Led and shipped Crew Planning Management System - the planning tool used by FedEx Air Operations",
        "Back-end Developer & System Architect - Designed domain object models in UML and designated implementation to development team. UML designs were done in Lucidchart and the API mock-ups in SwaggerHub",
        "Obtained Certified Scrum Master from the Scrum Alliance - Utilized this training to begin shifting Ubiquisoft's development methodology from waterfall to Agile(Scrum)",
      ]),
  Employment(
      companyName: "Ubiquisoft Technologies",
      positionTitle: "Software Developer",
      startDate: "Jun 2016",
      endDate: "Jan 2018",
      achievements: [
        "Worked on multiple FedEx Air Operations projects, including: Crew Planning Management System, Pilot Retirement Bonus System, Flight Observation System, and Flight Operations Crew Utilization System. All of these projects were built on a Spring Framework foundation, written in Java, along with additional Spring frameworks like SpringData-JPA. A few of the newer applications also relied on Spring Boot, whereas older projects are hosted on a Weblogic 12 application server. All these applications utilize an Angular front-end component",
        "Interacted on a daily basis with system users to gather requirements, discuss feature requests, and answer any questions",
        "Introduced Postman as a way of streamlining our development and testing processes by utilizing Postman Runners and shared Workspace Collections",
        "Researched the up-and-coming microservice architecture design philosophy for a better understanding of how our applications could be modernized by moving to this new architecture concept",
        "Continued maintenance of Air Operations servers carried over from my role as the company de facto Systems Administrator",
      ]),
  Employment(
      companyName: "Ubiquisoft Technologies",
      positionTitle: "Systems Administrator",
      startDate: "Jan 2015",
      endDate: "Jun 2016",
      achievements: [
        "Ran and maintained all thirty-five Air Operations servers hosted at the FedEx Air Operations Center, Memphis, TN",
        "Led a year long effort to move all thirty-five Air Operations server virtual machines to four new Cisco physical servers",
        "Continued management of virtual servers after migration in a RedHat 7 Hypervisor environment. SSH and X-11 forwarding used to maintain these servers as they were hosted within the FedEx Air Operations server farm",
        "Migrated all Air Operations personnel from RedHat desktop operating systems to Windows 7",
        "Provided on-site support to all Air Operations personnel as well as Ubiquisoft employees. Remote support of different FedEx OpCos achieved using Windows Remote Desktop and shell SSH access using Putty and XMing (for X-11 forwarding)",
        "Maintained all Ubiquisoft servers and services, including: SVN, Git, Company Website, Developer Apple Macs, Cisco Networking equipment",
      ]),
];
