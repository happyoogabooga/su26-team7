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
                    <li> <a href = "Current_courses.html" style = "color:white">Current Courses</a></li>
                    <li> <a href = "profile.html" style = "color:white">Profile</a>
                    <li> <a href = "login.html" style = "color:white">LogOut</a>
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
                            <div>Courses taken: ${student.enrolledHours}</div>
                            <div>Class Year: ${student.classYear}</div>
                        </div>
                        <a class="btn_outline" href="edit_personal_information.html">
                            Edit personal info
                        </a>
                    </div>
                </div>
                <!--the below section is reserved for, exit, update etc-->
                <div class = "card">
                    <div class = "card_head">
                        <h2>Account Information</h2>
                    </div>
                    <div class = "card_body">
                        <div>
                            <a class = "btn_outline" href = "change_password.html">Change Password</a>
                        </div>
                        <div>
                            <a class = "btn_outline" style="color:red">Sign out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>