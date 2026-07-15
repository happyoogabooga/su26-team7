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
            <h1>Change Your Password</h1>
        </header>
        <div class = "container">
            <div class = "container">
                <div class = "card">
                    <div class = "card_head">
                        <h1>Change your password</h1>
                    </div>
                    <div class = "card_body">
                        <form id = "editPassword">
                            <div class = "formstyle">
                                <label for = "Old_password" class = "formLabel">Old password *</label>
                                <input type = "password" id = "Old_password" required class = "formcontrol">
                            </div>
                            <div class = "formstyle">
                                <label for = "New_password" class = "formLabel">New password *</label>
                                <input type = "password" id = "New_password" required class = "formcontrol">
                            </div>
                            <div class = "formstyle">
                                <input type = "submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>