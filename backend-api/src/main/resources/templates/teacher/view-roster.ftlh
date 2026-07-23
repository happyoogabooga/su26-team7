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

                    <#list questionList as questions>
                    <div class="question-card">
                        <div class="question-header">
                            <span><#if questions.answer??>
                                        Answered
                                  <#else>
                                      Awaiting Response
                                  </#if></span>
                        </div>

                        <p class="question-text">
                            ${questions.text}
                        </p>

                        <div class="answer-box">
                            <strong>Reply:</strong>
                            <p>
                                <#if questions.answer??>
                                        ${questions.answer}
                                  <#else>
                                      Awaiting Answer
                                  </#if>
                            </p>
                        </div>

                        <form method="POST" action="/teacher/question/${questions.id}/reply">
                            <label for="reply"></label>

                            <input
                                type="hidden"
                                name="courseid"
                                value="${course.id}"
                            />

                            <input
                                type="hidden"
                                name="text"
                                value="${questions.text}"
                            />

                            <textarea
                                id="reply"
                                name="answer"
                                rows="4"
                                placeholder="Type answer here..."
                            ></textarea>

                            <button type="submit" class="reply-btn">
                                Send Reply
                            </button>
                        </form>
                    </div>
                    </#list>
                </section>

                <div class="buttons">
                    <button>
                        <a href="/teacher/teacher-dashboard">Back to Dashboard</a>
                    </button>
                </div>
            </div>
        </main>
    </body>
</html>
