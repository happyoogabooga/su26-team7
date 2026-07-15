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
            <h1>Edit Information</h1>
        </header>
        <div class = "container">
            <div class = "container">
                <div class = "card">
                    <div class = "card_head">
                        <h2>Edit your Personal Information</h2>
                    </div>
                    <div class = "card_body">
                        <form id = "editPersonalInformation" action = "/student/editInformation/${student.id}" method = "POST">
                            <div class = "formstyle">
                                <label for = "first_name" class = "formLabel">Name:</label>
                                <input type = "text" id = "Name" placeholder = "Jerry moyer" required class = "formcontrol" name = "name" value = "${student.name}">
                            </div>
                            <div class = "formstyle">
                                <label for = "Email" class = "formLabel">Email:</label>
                                <input type = "text" id = "Email" placeholder = "jerry@gmail.com" required class = "formcontrol" name = "email" value = "${student.email}">
                            </div>
                            <div class = "formstyle">
                                <label for = "Password" class = "formLabel">Password:</label>
                                <input type = "text" id = "Password" required class = "formcontrol" name = "password" value = "${student.password}">
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