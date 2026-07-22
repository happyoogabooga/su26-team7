<!DOCTYPE html>
<html>
    <head>
        <link rel = "StyleSheet" href = "/student/Styles.css"> 
    </head>
    <body>
        <nav>
            <div class = "navbar">
                <a href = "/student/schedule/${student.id}" class = "logo">Schedule Sidekick</a>
                <ul class = "navlinks">
                    <li> <a href = "/student/schedule/${student.id}" style = "color:white">Schedule</a>
                    <li> <a href = "/student/course_catalog/${student.id}" style = "color:white">Course catalog</a>
                    <li> <a href = "/student/profile/${student.id}" style = "color:white">Profile</a>
                    <li> <a href = "/student/login" style = "color:white">LogOut</a>
                </ul>
            </div>
        </nav>
        <header>
            <h1>About Course</h1>
            <p style = "color:black">View information about this course</p>
        </header>
        <div class = "container">
            <div class = "card">
                <div class = "card_head">
                    <h1>About this class</h1>
                </div>
                <div class = "card_body">
                    <!--course location-->
                    <div>
                        <p style = "margin-top:0">Name: ${course.name}</p>
                    </div>
                    <div>
                        <p>Location: ${course.location}</p>
                    </div>
                    <div>
                        <p>Time: ${course.startTime} - ${course.endTime}</p>
                    </div>
                    <div>
                        <p>Professor: ${course.teacher.name}</p>
                    </div>
                    <div>
                        <p>Course Description: ${course.description}</p>
                    </div>
                    <div>
                        <p>Days Availiable</p>
                    
                        <#if course.days?contains("M")>
                            Monday
                        </#if>

                        <#if course.days?contains("T")>
                            Tuesday
                        </#if>

                        <#if course.days?contains("W")>
                            Wednesday
                        </#if>

                        <#if course.days?contains("R")>
                            Thursday
                        </#if> 

                        <#if course.days?contains("F")>
                            friday
                        </#if>
                    </div>

                    <div>
                        <br>
                        Section: ${course.section}
                    </div>
                    <div>
                        seats open: ${course.maxEnrollment - course.currentEnrollment}/ ${course.maxEnrollment}
                    </div>
                    <div>
                        <!--if the the student is already enrolled, they cant enroll again-->
                        <#if codeCheck?seq_contains(course.code) || course.currentEnrollment == course.maxEnrollment>
                        <#else>
                        <form action = "/student/enrollment/add/${student.id}/${course.id}" method = "POST">
                            <button class = "btn_outline" style = "width:10%; color:red" type = "submit">
                                Add Course
                            </button>
                        </form>
                        </#if>

                    </div>
                </div>
            </div>
            <div class = "card">
                <div class = "card_head">
                    <h1>Questions About This Class</h1>
                </div>
                <div class = "card_body">
                    <form method = "POST" id = "courseQuestions" action = "/student/question">
                        <input type = "hidden" name = "courseid" value = "${course.id}">
                        <input type = "hidden" name = "studentid" value = "${student.id}">

                        <div class = "formstyle">
                            <label for = "courseQustions" class = "formLabel">Ask a Question</label>
                            <textarea id = "shortDescription" name = "text" placeholder = "Ask a question about this class." rows = "3" required class = "formcontrol"></textarea>
                        </div>
                        <div class = "formstyle">
                            <input type = "submit" class = "formSubmit" value = "Submit">
                        </div>
                    </form>
                    <h2>Existing Questions</h2>
                    <#if questions?has_content>
                        <#list questions as q>
                            <div class = "card_body">
                                <p><strong>Q:</strong> ${q.text}</p>
                                <#if q.answer?has_content>
                                    <p style="margin-left: 15px; color: green;"><strong>A:</strong> ${q.answer}</p>
                                <#else>
                                    <p style="margin-left: 15px; color: #777;"><em>No answer provided yet.</em></p>
                                </#if>
                            </div>
                        </#list>
                    <#else>
                        <p>No questions asked for this class yet.</p>
                    </#if>
                </div>
            </div>
        </div>
    </body>
</html>