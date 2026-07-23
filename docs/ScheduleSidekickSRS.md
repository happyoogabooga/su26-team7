# Requirements – Schedule Sidekick

**Project Name:** Schedule Sidekick \
**Team:** Jerry Moyer - Customer, Mack McCall - Provider \
**Course:** CSC 340\
**Version:** 1.0\
**Date:** 2026-06-29

---

## 1. Overview

**Vision.** Schedule Sidekick is the solution to class scheduling woes. Students can easily sign up for classes, drop classes, and see their schedule for the semester. Teachers can offer classes and manage class rosters with ease. Schedule Sidekick takes the hassle out of registration by giving a simple, unified interface for students and teachers alike.

**Glossary** Terms used in the project

- **Schedule:** display of classes a student is enrolled in.
- **Student** A user that is enrolled in classes.
- **Teacher:** The instructor/professor who is offering.
- **Profile:** A collection of information about a user, including personal details, fitness goals, and preferences.
- **Class:** The specific meeting between a teacher and students where material is taught.

**Primary Users / Roles.**

- **Student** — Enroll in classes and manage schedule.
- **Teacher** — Offer classes to students.

**Scope (this semester).**

- Accout creation
- User login
- Class creation, editing, and deletion
- Class add, drop
- Display Schedule
- Display available classes
- Display roster
- Class questions dependencies

**Out of scope (deferred).**

- Student hour limits
- Class conflict resolution
- Class filtering
- Class schedule calendar layout
- Class dropdown menu
- Is class full?

> This document is **requirements‑level** and solution‑neutral; design decisions (UI layouts, API endpoints, schemas) are documented separately.

---

## 2. Functional Requirements (User Stories)

### 2.1 Student Stories

- **US‑2 — Student account creation**  
  _Story:_ As a student I want to create and update my account so that I can access my account.
  _Acceptance:_

    ```gherkin
    Scenario: Student account creation
      Given I am in the loggin screen
      When I click a sign up button
      Then I should be able to create a student account
    ```

- **US‑4 — Student add and drop**  
  _Story:_ As a student I want to be able to add and drop classes so I can manage what classes I take.
  _Acceptance:_

    ```gherkin
    Scenario: Student add and drop classes
      Given I am logged in as a student
      When select add
      Then The class will be added to my schedule
      And when I select drop
      Then  The class in question should be dropped from my schedule
    ```

- **US‑5 — Student class questions**  
  _Story:_ As a student I want to ask questions about the classes I pick so that I understand what is offered.
  _Acceptance:_

    ```gherkin
    Scenario: Student class questions
      Given I have enrolled in a class
      When I select the ask questions option under details
      Then  I should be able to ask questiona bout the class
    ```

- **US‑7 — Student schedule**  
  _Story:_ As a student I want to view my schedule of classes so that I know what I am taking.
  _Acceptance:_

    ```gherkin
    Scenario: Student Schedule
      Given I am logged in as a student
      When I am on the schedule tab
      Then I should be able to view my schedule
    ```

- **US‑9 — Student class full**  
  _Story:_ As a student I want to know if a class is full so that I know if I can enroll.
  _Acceptance:_

    ```gherkin
    Scenario: Student class full
      Given I am logged in as a student
      When  I view my classes in the schedule viewing tab
      Then  I should be able to view how many more seats a class has open
    ```

### 2.2 Provider Stories

- **US-1 — Create and update teacher account**  
  _Story:_ As a teacher, I want to create and update my account, so that I can access my account.
  _Acceptance:_

    ```gherkin
    Scenario: Create and update teacher account
      Given I do not have an account
      When  I provide my details and submit the form
      Then  the account should be visible to me
    ```

- **US-3 — Create class sessions**  
  _Story:_ As a teacher, I want to create class sessions, so that I can offer classes.
  _Acceptance:_

    ```gherkin
    Scenario: Create class sessions
      Given I have a class I want to offer
      When  I provide the class details and submit the form
      Then  the class should be open for students
    ```

- **US-6 — Respond to student questions**  
  _Story:_ As a teacher, I want to respond to student questions, so that students get answers about the class.
  _Acceptance:_

    ```gherkin
    Scenario: Respond to student questions
      Given A student has asked a question
      When  I input an answer for the question
      Then  the answer should appear under the question asked.
    ```

- **US-8 — View class rosters**  
  _Story:_ As a teacher, I want to view the roster of students in each class, so that I know who is taking them.
  _Acceptance:_
    ```gherkin
    Scenario: View class rosters
      Given I have a class with students registered
      When  I select the class roster
      Then  the list of students enrolled should appear.
    ```

---

## 3. Non‑Functional Requirements (make them measurable)

- **Performance:** 95% of discovery responses should be returned in < 4 seconds under typical load.
- **Availability/Reliability:** The system should be availiable 99% of the time.
- **Usability:** New users should be able to add classes within 2 minutes of signing up.

---

## 4. Assumptions, Constraints, and Policies

- Modern Browsers(latest Chrome/Firefox/Edge/Safari); stable connectivity.
- Website must be finished by July 23rd 2026

---

## 5. Milestones (course‑aligned)

- **M1 Requirements** — this file + stories opened as issues.
- **M2 High‑fidelity prototype** — core customer/provider flows fully interactive.
- **M3 Design** — architecture, schema, API outline.
- **M4 Backend API** — key endpoints + tests.
- **M5 Increment** — ≥2 use cases end‑to‑end.
- **M6 Final** — complete system & documentation.

---

## 6. Change Management

- Stories are living artifacts; changes are tracked via repository issues and linked pull requests.
- Major changes should update this SRS.
