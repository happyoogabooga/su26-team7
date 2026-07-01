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

- **Term 1:** description.
- **Term 2:** description

**Primary Users / Roles.**

- **Customer (e.g., Student/Patient/Pet Owner/etc. )** — 1 line goal statement.
- **Provider (e.g., Teacher/Doctor/Pet Sitter/etc. )** — 1 line goal statement.
- **SysAdmin (optional)** — 1 line goal statement.

**Scope (this semester).**

- <capability 1>
- <capability 2>
- <capability 3>

**Out of scope (deferred).**

- <deferred 1>
- <deferred 2>

> This document is **requirements‑level** and solution‑neutral; design decisions (UI layouts, API endpoints, schemas) are documented separately.

---

## 2. Functional Requirements (User Stories)

Write each story as: **As a `<role>`, I want `<capability>`, so that `<benefit>`.** Each story includes at least one **Given/When/Then** scenario.

### 2.1 Customer Stories

- **US‑1 — <short title>**  
  _Story:_ As a customer, I want … so that …  
  _Acceptance:_

    ```gherkin
    Scenario: <happy path>
      Given <preconditions>
      When  <action>
      Then  <observable outcome>
    ```

- **US‑2 — <short title>**  
  _Story:_ As a customer, I want … so that …  
  _Acceptance:_
    ```gherkin
    Scenario: <happy path>
      Given <preconditions>
      When  <action>
      Then  <observable outcome>
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

- **Performance:** description
- **Availability/Reliability:** description
- **Security/Privacy:** description
- **Usability:** description

---

## 4. Assumptions, Constraints, and Policies

- list any rules, policies, assumptions, etc.

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
