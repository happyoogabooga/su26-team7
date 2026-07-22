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
                    <li> <a href = "/studentCurrent_courses.html" style = "color:white">Current Courses</a></li>
                    <li> <a href = "/student/profile/${student.id}" style = "color:white">Profile</a>
                    <li> <a href = "/student/login" style = "color:white">LogOut</a>
                </ul>
            </div>
        </nav>
        <header>
            <h1>Student Profile</h1>
        </header>
        <div class = "container">
            <div class = "container">
                <!--The below section is reservered for profile things-->
                <div class = "card">
                    <div class = "card_head">
                        <h2>Personal Information</h2>
                    </div>
                    <div class = "card_body">
                        <div class = "card_body_grid">
                            <div>Name: ${student.name}</div>
                            <div>Email: ${student.email} </div>
                            <div>Class Year: ${student.classYear}</div>
                        </div>
                    </div>
                </div>
                <!--the below section is reserved for, exit, update etc-->
                <div class = "card">
                    <div class = "card_head">
                        <h2>Account Information</h2>
                    </div>
                    <div class = "card_body">
                        <a class="btn_outline" href="/student/editInformation/${student.id}">
                            Edit personal information
                        </a>
                        <div>
                            <a class = "btn_outline" style="color:red" href = "/student/login">Sign out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>