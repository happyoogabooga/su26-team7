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
            <h1>Planned Schedule</h1>
            <p style = "color:black">Welcome back ${student.name}!</p>
        </header>
        <div class = "container">
            <div style  = "display:block">
                <div class = "card_body_grid">
                    <div>
                        Name: ${student.name}
                    </div>
                    <div>
                        Term: Fall
                    </div>
                    <div>
                        Class year: ${student.classYear}
                    </div>
                    <div>
                        Credits taken: ${student.enrolledHours}
                    </div>
                </div>
                <div>
                    <!-- Dynamically links to the course catalog for this specific student -->
                    <a href = "/student/course_catalog/${student.id}" class = "btn_outline" style = "text-align:center; width:15%;">Add classes</a>
                </div>
            </div>
            <div>
                <h1>Your Schedule of Classes</h1>
            </div>
            
            <div class = "schedule_card">
                <div class = "schedule_header">
                    <div class = "schedule_header_label">Time</div>
                    <div class = "schedule_header_label">Monday</div>
                    <div class = "schedule_header_label">Tuesday</div>
                    <div class = "schedule_header_label">Wednesday</div>
                    <div class = "schedule_header_label">Thursday</div>
                    <div class = "schedule_header_label">Friday</div>
                </div>
            <div class="schedule_grid">
                <!-- Time labels -->
                <div class="time_column">
                    <div class="time_slot"><span>8:00</span></div>
                    <div class="time_slot"><span>8:15</span></div>
                    <div class="time_slot"><span>8:30</span></div>
                    <div class="time_slot"><span>8:45</span></div>
                    <div class="time_slot"><span>9:00</span></div>
                    <div class="time_slot"><span>9:15</span></div>
                    <div class="time_slot"><span>9:30</span></div>
                    <div class="time_slot"><span>9:45</span></div>
                    <div class="time_slot"><span>10:00</span></div>
                    <div class="time_slot"><span>10:15</span></div>
                    <div class="time_slot"><span>10:30</span></div>
                    <div class="time_slot"><span>10:45</span></div>
                    <div class="time_slot"><span>11:00</span></div>
                    <div class="time_slot"><span>11:15</span></div>
                    <div class="time_slot"><span>11:30</span></div>
                    <div class="time_slot"><span>11:45</span></div>
                    <div class="time_slot"><span>12:00</span></div>
                    <div class="time_slot"><span>12:15</span></div>
                    <div class="time_slot"><span>12:30</span></div>
                    <div class="time_slot"><span>12:45</span></div>
                    <div class="time_slot"><span>1:00</span></div>
                    <div class="time_slot"><span>1:15</span></div>
                    <div class="time_slot"><span>1:30</span></div>
                    <div class="time_slot"><span>1:45</span></div>
                    <div class="time_slot"><span>2:00</span></div>
                    <div class="time_slot"><span>2:15</span></div>
                    <div class="time_slot"><span>2:30</span></div>
                    <div class="time_slot"><span>2:45</span></div>
                    <div class="time_slot"><span>3:00</span></div>
                    <div class="time_slot"><span>3:15</span></div>
                    <div class="time_slot"><span>3:30</span></div>
                    <div class="time_slot"><span>3:45</span></div>
                    <div class="time_slot"><span>4:00</span></div>
                    <div class="time_slot"><span>4:15</span></div>
                    <div class="time_slot"><span>4:30</span></div>
                    <div class="time_slot"><span>4:45</span></div>
                    <div class="time_slot"><span>5:00</span></div>
                    <div class="time_slot"><span>5:15</span></div>
                    <div class="time_slot"><span>5:30</span></div>
                    <div class="time_slot"><span>5:45</span></div>
                    <div class="time_slot"><span>6:00</span></div>
                    <div class="time_slot"><span>6:15</span></div>
                    <div class="time_slot"><span>6:30</span></div>
                    <div class="time_slot"><span>6:45</span></div>
                    <div class="time_slot"><span>7:00</span></div>
                    <div class="time_slot"><span>7:15</span></div>
                    <div class="time_slot"><span>7:30</span></div>
                    <div class="time_slot"><span>7:45</span></div>
                    <div class="time_slot"><span>8:00</span></div>
                </div>
            

                <div class="day_column">

                    <#list 1..49 as i><div class="day_cell"></div></#list>

                    <!--MONDAY COLUMN-->
                    <#list enrollments as enrollment>
                        <#if enrollment.course.days?contains("M")>
                            <div class="schedule_event" style="grid-row: ${enrollment.course.startGridRow} / ${enrollment.course.endGridRow};">
                                <div>${enrollment.course.code?upper_case}</div>
                                <div class="schedule-course-middle">
                                    <div><p>Location: ${enrollment.course.location}</p></div>
                                    <div><p>Time: ${enrollment.course.startTime} - ${enrollment.course.endTime}</p></div>
                                    <div><p>Professor: ${enrollment.course.teacher.name}</p></div>
                                    <div><p>Seats open: ${enrollment.course.maxEnrollment - enrollment.course.currentEnrollment}</p></div>
                                </div>
                                <div style="margin-top:auto; display:inline-flex">
                                    <div><a href="/class_details/${student.id}/${enrollment.course.id}">Details</a></div>
                                    <div class="schedule_drop_course"><a href = /student/deleteEnrollment/${student.id}/${enrollment.id}>Drop class</a></div>
                                </div>
                            </div>
                        </#if>
                    </#list>
                </div>
            
                <!--TUESDAY COLUMN-->
                <div class="day_column">
                    <#list 1..49 as i><div class="day_cell"></div></#list>
                    <#list enrollments as enrollment>
                        <#if enrollment.course.days?contains("T")>
                            <div class="schedule_event" style="grid-row: ${enrollment.course.startGridRow} / ${enrollment.course.endGridRow};">
                                <div>${enrollment.course.code?upper_case}</div>
                                <div class="schedule-course-middle">
                                    <div><p>Location: ${enrollment.course.location}</p></div>
                                    <div><p>Time: ${enrollment.course.startTime} - ${enrollment.course.endTime}</p></div>
                                    <div><p>Professor: ${enrollment.course.teacher.name}</p></div>
                                    <div><p>Seats open: ${enrollment.course.maxEnrollment - enrollment.course.currentEnrollment}</p></div>
                                </div>
                                <div style="margin-top:auto; display:inline-flex">
                                    <div><a href="/class_details/${student.id}/${enrollment.course.id}">Details</a></div>
                                    <div class="schedule_drop_course"><a href = /student/deleteEnrollment/${student.id}/${enrollment.id}>Drop class</a></div>
                                </div>
                            </div>
                        </#if>
                    </#list>
                </div>
            
                <!--WEDNESDAY COLUMN-->
                <div class="day_column">
                    <#list 1..49 as i><div class="day_cell"></div></#list>
                    <#list enrollments as enrollment>
                        <#if enrollment.course.days?contains("W")>
                            <div class="schedule_event" style="grid-row: ${enrollment.course.startGridRow} / ${enrollment.course.endGridRow};">
                                <div>${enrollment.course.code?upper_case}</div>
                                <div class="schedule-course-middle">
                                    <div><p>Location: ${enrollment.course.location}</p></div>
                                    <div><p>Time: ${enrollment.course.startTime} - ${enrollment.course.endTime}</p></div>
                                    <div><p>Professor: ${enrollment.course.teacher.name}</p></div>
                                    <div><p>Seats open: ${enrollment.course.maxEnrollment - enrollment.course.currentEnrollment}</p></div>
                                </div>
                                <div style="margin-top:auto; display:inline-flex">
                                    <div><a href="/class_details/${student.id}/${enrollment.course.id}">Details</a></div>
                                    <div class="schedule_drop_course"><a href = /student/deleteEnrollment/${student.id}/${enrollment.id}>Drop class</a></div>
                                </div>
                            </div>
                        </#if>
                    </#list>
                </div>
            
                <!--THURSDAY COLUMN-->
                <div class="day_column">
                    <#list 1..49 as i><div class="day_cell"></div></#list>
                    <#list enrollments as enrollment>
                        <#if enrollment.course.days?contains("R")>
                            <div class="schedule_event" style="grid-row: ${enrollment.course.startGridRow} / ${enrollment.course.endGridRow};">
                                <div>${enrollment.course.code?upper_case}</div>
                                <div class="schedule-course-middle">
                                    <div><p>Location: ${enrollment.course.location}</p></div>
                                    <div><p>Time: ${enrollment.course.startTime} - ${enrollment.course.endTime}</p></div>
                                    <div><p>Professor: ${enrollment.course.teacher.name}</p></div>
                                    <div><p>Seats open: ${enrollment.course.maxEnrollment - enrollment.course.currentEnrollment}</p></div>
                                </div>
                                <div style="margin-top:auto; display:inline-flex">
                                    <div><a href="/class_details/${student.id}/${enrollment.course.id}">Details</a></div>
                                    <div class="schedule_drop_course"><a href = /student/deleteEnrollment/${student.id}/${enrollment.id}>Drop class</a></div>
                                </div>
                            </div>
                        </#if>
                    </#list>
                </div>
            
                <!--FRIDAY COLUMN-->
                <div class="day_column">
                    <#list 1..49 as i><div class="day_cell"></div></#list>
                    <#list enrollments as enrollment>
                        <#if enrollment.course.days?contains("F")>
                            <div class="schedule_event" style="grid-row: ${enrollment.course.startGridRow} / ${enrollment.course.endGridRow};">
                                <div>${enrollment.course.code?upper_case}</div>
                                <div class="schedule-course-middle">
                                    <div><p>Location: ${enrollment.course.location}</p></div>
                                    <div><p>Time: ${enrollment.course.startTime} - ${enrollment.course.endTime}</p></div>
                                    <div><p>Professor: ${enrollment.course.teacher.name}</p></div>
                                    <div><p>Seats open: ${enrollment.course.maxEnrollment - enrollment.course.currentEnrollment}</p></div>
                                </div>
                                <div style="margin-top:auto; display:inline-flex">
                                    <div><a href="/class_details/${student.id}/${enrollment.course.id}">Details</a></div>
                                    <div class="schedule_drop_course"><a href = /student/deleteEnrollment/${student.id}/${enrollment.id}>Drop class</a></div>
                                </div>
                            </div>
                        </#if>
                    </#list>
                </div>
            </div>
            </div>
        </div>
    </body>
</html>