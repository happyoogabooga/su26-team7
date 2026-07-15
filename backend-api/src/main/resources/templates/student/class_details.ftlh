<!DOCTYPE html>
<html>
    <head>
        <link rel = "StyleSheet" href = "/student/Styles.css"> 
    </head>
    <body>
        <nav>
            <div class = "navbar">
                <a href = "schedule.html" class = "logo">Schedule Sidekick</a>
                <ul class = "navlinks">
                    <li> <a href = "schedule.html" style = "color:white">Schedule</a>
                    <li> <a href = "/course_catalog" style = "color:white">Course catalog</a>
                    <li> <a href = "current_courses.html" style = "color:white">Current Courses</a></li>
                    <li> <a href = "profile.html" style = "color:white">Profile</a>
                    <li> <a href = "login.html" style = "color:white">LogOut</a>
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
                        <!--on click, send a post request for an enrollment to the back end-->
                        <form action = "/enrollment/add/${student.id}/${course.id}" method = "POST">
                            <button class = "btn_outline" style = "width:10%; color:red" type = "submit">
                                Add Course
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class = "card">
                <div class = "card_head">
                    <h1>Questions About This Class</h1>
                </div>
                <div class = "card_body">
                    <form method = "post" id = "courseQuestions">
                        <div class = "formstyle">
                            <label for = "courseQustions" class = "formLabel">Ask a Question</label>
                            <textarea id = "shortDescription" name = "shortDescription" placeholder = "Ask a question about this class." rows = "3" required class = "formcontrol"></textarea>
                        </div>
                        <div class = "formstyle">
                            <input type = "submit" class = "formSubmit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>