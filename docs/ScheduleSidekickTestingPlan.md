**Project Name:** Schedule Sidekick \  
**Version:** Jerry Moyer - Student, Mack McCall - Teacher \
**Date:** 07/22/26
**Purpose:** Plan for Schedule Sidekick

## Actors

- Teacher T:
- Student S:

## Use Cases

#### 1. Teacher: US‑1 Create & update account

1. Teacher T1 logs in for the first time and creates a profile.
2. T1 navigates to the profile via the navigation bar.
3. T1 edits their profile to update email, name or password.
4. T1 logs out.

#### 2. Student: US‑2 Create & update account

1. Student S1 logs in for the first time and creates a profile.
2. S1 navigates to the profile via the navigation bar.
3. S1 edits their profile to update email, name or password.
4. S1 logs out.

#### 3. Teacher: US‑3 Create class sessions

1. Teacher T1 navigates to their profile.
2. T1 clicks the create course button.
3. T1 fills out the form for the class they want to offer.
4. T1 clicks create class.

#### 4. Student: US-4 Add & drop classes

1. Student S1 clicks on the course catalog.
2. S1 clicks on a course.
3. S1 looks at the description of the course, then adds it to their schedule.
4. S1 drops the class.

#### 5. Student: US-5 Ask questions

1. Student S1 navigates to a courses description.
2. S1 asks a question about the class.
3. Teacher T1 responds to the question.
4. T1's response is now visable.

#### 6. Teacher: US-6 Answer questions

1. Teacher T1 navigates to a course roster.
2. T1 finds the reply section for a question.
3. Teacher T1 responds to the question.

#### 7. Student: US-7 View schedule

1. Student S1 navigates to their schedule.
2. S1 is can see their schedule.

#### 8. Teacher: US-8 View roster

1. Teacher T1 navigates to their profile.
2. T1 finds their classes.
3. Teacher T1 clicks view roster for a class.

#### 9. Student: US-9 Class full

1. Student S1 navigates to course catalog.
2. S1 clicks on a course.
3. S1 sees 0/30 seats availiable.
4. S1 is not able to add the class.

## CROSS-CUTTING TEST SCENARIOS (Non-Functional Requirements)

### Performance Requirements

**Scenario P1: course_catalog response time < 3 seconds**

- **Setup:** Server under typical load
- **Steps:**
    1. Measure response time for "course_catalog" page load with 4 active courses availiable.
    2. Repeat 5 times.
- **Expected Outcome:** 95% of requests ≤ 3 seconds

**Scenario P2: add/drop classes response time ≤ 2 seconds**

- **Setup:** Server under typical load
- **Steps:**
    1. Measure response time for adding or dropping a class.
    2. Repeat 5 times.
- **Expected Outcome:** 95% of requests ≤ 2 seconds

**Scenario P3: view roster response time ≤ 2 seconds**

- **Setup:** Server under typical load
- **Steps:**
    1. Measure response time for viewing a roster for a class.
    2. Repeat 5 times.
- **Expected Outcome:** 95% of requests ≤ 2 seconds

### Usability Requirements

**Scenario U1:Students should be able to add classes within 2 minutes of signing up**

- **Setup: A student signs up through the sign in page, and is taken to the default schedule page**
- **Steps:**
    1. Student navigates to courses.
    2. Student clicks on a class.
    3. Student adds a class.
- **Expected Outcome:** Time to register and add a class ≤ 2 minutes

**Scenario U2: Teachers should be able to create classes within 3 minutes of signing up**

- **Setup: A teacher signs up through the sign in page, and is taken to their profile page**
- **Steps:**
    1. Teacher navigates to their courses.
    2. Teacher clicks on create a class.
    3. Teacher creates a class.
- **Expected Outcome:** Time to register and create a class ≤ 3 minutes
