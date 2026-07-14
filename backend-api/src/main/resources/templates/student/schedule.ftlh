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
                    <li> <a href = "/profile/${student.id}" style = "color:white">Profile</a>
                    <li> <a href = "login.html" style = "color:white">LogOut</a>
                </ul>
            </div>
        </nav>
        <header>
            <h1>Planned Schedule</h1>
            <p style = "color:black">Welcome back ${student.name}!</p>
        </header>
        <div class = "container">
            <div style  = "display:block">
                <!--Top stuff will go here-->
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
                    <a href = "/course_catalog" class = "btn_outline" style = "text-align:center; width:15%;">Add classes</a>
                </div>
            </div>
            <div>
                <h1>Your of classes</h1>
            </div>
            <!--An I Frame will be here, this section is where the schedule will go-->
            <div class = "schedule_card">
                <div class = "schedule_header">
                    <div class = "schedule_header_label">Time</div>
                    <div class = "schedule_header_label">Monday</div>
                    <div class = "schedule_header_label">Tuesday</div>
                    <div class = "schedule_header_label">Wednesday</div>
                    <div class = "schedule_header_label">Thursday</div>
                    <div class = "schedule_header_label">Friday</div>
                </div>

                <div class = "schedule_grid">
                    <div class = "time_column">
                        <div class = "time_slot"><span>8:00</span></div>
                        <div class = "time_slot"><span>8:15</span></div>
                        <div class = "time_slot"><span>8:30</span></div>
                        <div class = "time_slot"><span>8:45</span></div>
                        <div class = "time_slot"><span>9:00</span></div>
                        <div class = "time_slot"><span>9:15</span></div>
                        <div class = "time_slot"><span>9:30</span></div>
                        <div class = "time_slot"><span>9:45</span></div>
                        <div class = "time_slot"><span>10:00</span></div>
                        <div class = "time_slot"><span>10:15</span></div>
                        <div class = "time_slot"><span>10:30</span></div>
                        <div class = "time_slot"><span>10:45</span></div>
                        <div class = "time_slot"><span>11:00</span></div>
                        <div class = "time_slot"><span>11:15</span></div>
                        <div class = "time_slot"><span>11:30</span></div>
                        <div class = "time_slot"><span>11:45</span></div>
                        <div class = "time_slot"><span>12:00</span></div>
                        <div class = "time_slot"><span>12:15</span></div>
                        <div class = "time_slot"><span>12:30</span></div>
                        <div class = "time_slot"><span>12:45</span></div>
                        <div class = "time_slot"><span>1:00</span></div>
                        <div class = "time_slot"><span>1:15</span></div>
                        <div class = "time_slot"><span>1:30</span></div>
                        <div class = "time_slot"><span>1:45</span></div>
                        <div class = "time_slot"><span>2:00</span></div>
                        <div class = "time_slot"><span>2:15</span></div>
                        <div class = "time_slot"><span>2:30</span></div>
                        <div class = "time_slot"><span>2:45</span></div>
                        <div class = "time_slot"><span>3:00</span></div>
                        <div class = "time_slot"><span>3:15</span></div>
                        <div class = "time_slot"><span>3:30</span></div>
                        <div class = "time_slot"><span>3:45</span></div>
                        <div class = "time_slot"><span>4:00</span></div>
                        <div class = "time_slot"><span>4:15</span></div>
                        <div class = "time_slot"><span>4:30</span></div>
                        <div class = "time_slot"><span>4:45</span></div>
                        <div class = "time_slot"><span>4:45</span></div>
                        <div class = "time_slot"><span>5:00</span></div>
                        <div class = "time_slot"><span>5:15</span></div>
                        <div class = "time_slot"><span>5:30</span></div>
                        <div class = "time_slot"><span>5:45</span></div>
                        <div class = "time_slot"><span>6:00</span></div>
                        <div class = "time_slot"><span>6:15</span></div>
                        <div class = "time_slot"><span>6:30</span></div>
                        <div class = "time_slot"><span>6:45</span></div>
                        <div class = "time_slot"><span>7:00</span></div>
                        <div class = "time_slot"><span>7:15</span></div>
                        <div class = "time_slot"><span>7:30</span></div>
                        <div class = "time_slot"><span>7:45</span></div>
                        <div class = "time_slot"><span>8:00</span></div>
                    </div>

                    <div class = "day_column">
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "schedule_event event-1h">
                            <div>CSC 340</div>
                            <div class = "schedule-course-middle">
                                <div>
                                    <p>Location: Petty 007</p>
                                </div>
                                <div>
                                    <p>Time: 10:10 - 12:00</p>
                                </div>
                                <div>
                                    <p>Professor: Sunny Ntini</p>
                                </div>
                                <div>
                                    <p>Seats open: 12</p>
                                </div>
                            </div>
                            <div style = "margin-top:auto; display:inline-flex"><div><a href = "class_one.html">Details</a></div><div class = "schedule_drop_course">Drop class</div></div>
                        </div>
                    </div>
                    <div class = "day_column">
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "schedule_event event-2h"><div>Mat 310</div>
                            <div class = "schedule-course-middle">
                                <div>
                                    <p>Petty: 007</p>
                                </div>
                                <div>
                                    <p>Time: 12:00 - 12:50</p>
                                </div>
                                <div>
                                    <p>Professor: Thomas Weighill</p>
                                </div>
                                <div>
                                    <p>Seats open: 5</p>
                                </div>
                            </div>
                            <div class = "schedule_event_actions"><div><a href = "class_one.html">Details</a></div><div class = "schedule_drop_course">Drop class</div></div></div>
                    </div>
                    <div class = "day_column">
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "schedule_event event-3h lab"><div>Bio 111 - Lab</div>
                            <div class = "schedule-course-middle">
                                <div>
                                    <p>Location: NSCI 203</p>
                                </div>
                                <div>
                                    <p>Time: 8:00 - 10:45</p>
                                </div>
                                <div>
                                    <p>Professor: Jenna Jordan</p>
                                </div>
                                <div>
                                    <p>Seats open: 9</p>
                                </div>
                            </div>
                            <div style = "margin-top:auto; display:inline-flex"><div><a href = "class_one.html">Details</a></div><div class = "schedule_drop_course">Drop class</div></div></div>
                    </div>

                    <div class = "day_column">
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "schedule_event event-1h math"><div>CSC 477</div>
                            <div class = "schedule-course-middle">
                                <div>
                                    <p>Location: Petty 224</p>
                                </div>
                                <div>
                                    <p>Time: 10:10 - 12:00</p>
                                </div>
                                <div>
                                    <p>
                                    Professor: Shan Suthaharan
                                    </p>
                                </div>
                                <div>
                                    <p>
                                        Seats open: 3
                                    </p>
                                </div>
                            </div>
                            <div style = "margin-top:auto; display:inline-flex"><div><a href = "class_one.html">Details</a></div><div class = "schedule_drop_course">Drop class</div></div></div>
                    </div>

                    <div class = "day_column">
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                        <div class = "day_cell"></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>