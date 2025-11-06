SkillScope – Smart Skill & Event Discovery Platform

SkillScope is a full-stack Java web application that helps users explore trending skills and discover events or workshops happening across cities.
It connects learners, professionals, and organizers through a dynamic, modern interface.

Features:

Frontend (JSP + Bootstrap + JS):

Responsive UI built with HTML, CSS, and Bootstrap

Interactive navigation with sidebar and search

AJAX integration for live event search

Modern layout using JSP includes (header.jsp, footer.jsp)

Backend (Java Servlets + Tomcat):

Built using Java Servlets and MVC architecture

Handles user input, data filtering, and event search logic

Supports both offline dataset (static events) and API integration (Eventbrite)

Deployed on Apache Tomcat 9

Database (MySQL):

Stores event and user data for persistent access

Integrated using JDBC (DBConnection.java)

Tables: users, events, organizers, registrations

Tech Stack:
Layer	Technology
Frontend	HTML, CSS, JSP, Bootstrap, jQuery
Backend	Java Servlets, MVC Architecture
Database	MySQL
Server	Apache Tomcat 9
Version Control	Git + GitHub
Build Tool (if Maven)	Maven (optional setup)
🛠️ Project Structure
SkillScope/
├── src/
│   ├── main/java/com/skillscope/servlets/EventServlet.java
│   ├── main/java/com/skillscope/dao/DBConnection.java
│   └── ...
├── src/main/webapp/
│   ├── index.jsp
│   ├── events.jsp
│   ├── skills.jsp
│   ├── login.jsp
│   ├── register.jsp
│   ├── include/
│   │   ├── header.jsp
│   │   └── footer.jsp
│   └── WEB-INF/web.xml
└── README.md

Setup Instructions:
Prerequisites:

Java JDK 17 or later

Apache Tomcat 9

MySQL Server

Eclipse IDE / IntelliJ IDEA

Git (for version control)

Steps:
1)Clone the Repository:

git clone https://github.com/Niharika335/Skillscope.git
cd Skillscope


 2)Import into Eclipse:

Go to File → Import → Existing Projects into Workspace

Select the SkillScope project folder

3)Setup Database:

Open MySQL and run:

CREATE DATABASE skillscope;
USE skillscope;
SOURCE event_db.sql;


Update your DB credentials in DBConnection.java

4)Run the Server:

Add Tomcat 9 in Eclipse

Right-click project → Run As → Run on Server

Open browser: http://localhost:8080/skillscope/


Example Data (Offline Mode):
Event Name	City	Date	Category
Tech Fest 2025	Bangalore	2025-12-20	Technology
AI & Data Science Summit	Pune	2025-12-10	Technology
Design Thinking Workshop	Mumbai	2025-12-05	Design
Startup Meetup	Hyderabad	2025-11-25	Business
Cybersecurity Conference	Delhi	2025-12-18	Security


Contributors:

 Niharika Singh –  Backend Developer (Servlets + Logic Handling)
 Shivangi – Frontend Developer (UI + JSP Integration)
 Mrunal Shinde – Database & API Integration (MySQL + Eventbrite)

Future Enhancements:

1)Live Event Fetching via Eventbrite API

2)User Authentication System (Login/Register)

3)Event Registration & Organizer Dashboard

4)Email Notifications & Ticket System

Acknowledgements:

Bootstrap 5 for UI components

Eventbrite API for event data integration

Apache Tomcat & Java EE for server-side development

License:

This project is for educational purposes only.
© 2025 SkillScope Team. All rights res
