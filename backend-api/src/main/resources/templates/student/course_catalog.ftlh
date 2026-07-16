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
                    <li> <a href = "Current_courses.html" style = "color:white">Current Courses</a></li>
                    <li> <a href = "/student/profile/${student.id}" style = "color:white">Profile</a>
                    <li> <a href = "/login" style = "color:white">LogOut</a>
                </ul>
            </div>
        </nav>
        <header>
            <h1>Course Catalog</h1>
        </header>
        <div class = "container">
            <div class = "card">
                <div class = "card_head">
                    <h1>Search for a Class!</h1>
                </div>
                <div class = "card_body">
                    <!--Different searching methods can be used in these different divs(search by subject, search by proffessor etc)-->
                    <form id = "courseCatalog">
                        <div style = "display:block; margin-bottom:15px">
                            <label for = "subject" class = "formLabel">Filter by subject</label>
                            <select name = "subject" id = "subject" onchange="this.form.submit()">
                                <option value = "None" class = "dropdown_options" <#if selectedSubject == "None">selected</#if>>None (All)</option>
                                <option value = "CSC" <#if selectedSubject == "CSC">selected</#if>>CSC</option>
                                <option value = "MAT" <#if selectedSubject == "MAT">selected</#if>>MAT</option>
                                <option value = "ENGLISH" <#if selectedSubject == "ENGLISH">selected</#if>>ENGLISH</option>
                            </select>
                        </div>
                        <!--later on update this to show how many students the class has, basically instead of csc being in there for example, make it a div-->
                        <div style = "display:block; margin-bottom:15px">
                            <label for = "Classes" class = "formLabel">Search for Classes</label>
                            <div class = "course_options_list" id = "Classes">
                            <#if courseList?size == 0>
                                <div class = "course_option_row">
                                    <div class = "course_option_title">No classes found.</div>
                                </div>
                            <#else>
                                <#list courseList as course>
                                <a href = "/student/class_details/${student.id}/${course.id}" style = "width:100%">
                                    <div class = "course_option_row" style = "text-align:left">
                                        <div class = "course_option_title">${course.name}</div>
                                        <div class = "course_option_detail">Professor: ${course.teacher.name}</div>
                                        <div class = "course_option_detail">Seats Open: ${course.maxEnrollment - course.currentEnrollment}</div>
                                    </div>
                                </a>
                                </#list>
                            </#if>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>