<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Schedule Sidekick - Class Roster</title>
        <link rel="stylesheet" href="/teacher/view-roster.css" />
    </head>
    <body>
        <nav>
            <div class="logo">
                <h2>Schedule Sidekick</h2>
            </div>

            <ul>
                <li><a href="/high-fidelity-prototype/index.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Account</a></li>
            </ul>
        </nav>

        <header>
            <h1>Class Roster</h1>
        </header>

        <main>
            <div class="card">
                <div class="course-info">
                    <h2>${course.code} - ${course.name}</h2>
                    <p><strong>Section:</strong> ${course.section}</p>
                    <p>
                        <strong>Meeting Time:</strong> ${course.days} •
                        ${course.startTime} - ${course.endTime}
                    </p>
                    <p><strong>Enrollment:</strong> ${course.currentEnrollment} / ${course.maxEnrollment} Students</p>
                </div>

                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Class Year</th>
                            <th>Enrolled Hours</th>
                        </tr>
                    </thead>

                    <tbody>
                        <#list enrollmentList as enrollments>
                        <tr> 
                            <td>${enrollments.student.name}</td>
                            <td>${enrollments.student.email}</td>
                            <td>${enrollments.student.classYear}</td>
                            <td>${enrollments.student.enrolledHours}</td>                         
                        </tr>
                        </#list>

                    </tbody>
                </table>

                <section class="questions">
                    <h2>Student Questions</h2>

                    <div class="question-card">
                        <div class="question-header">
                            <h3>Emily Carter</h3>
                            <span>Answered</span>
                        </div>

                        <p class="question-text">
                            Will homework submitted a few days late receive
                            partial credit?
                        </p>

                        <div class="answer-box">
                            <strong>Reply:</strong>
                            <p>
                                Yes. Assignments submitted within three days of
                                the due date will receive up to 90% credit.
                                After that, no late submissions will be
                                accepted.
                            </p>
                        </div>
                    </div>

                    <div class="question-card">
                        <div class="question-header">
                            <h3>Michael Johnson</h3>
                            <span>Awaiting Response</span>
                        </div>

                        <p class="question-text">
                            Could you elaborate on how much writing will be
                            required for this class?
                        </p>

                        <label for="reply">Reply</label>

                        <textarea
                            id="reply"
                            rows="4"
                            placeholder="Type your response here..."
                        ></textarea>

                        <button class="reply-btn">Send Reply</button>
                    </div>
                </section>

                <div class="buttons">
                    <button>
                        <a href="teacher-dashboard.html">Back to Dashboard</a>
                    </button>
                </div>
            </div>
        </main>
    </body>
</html>
