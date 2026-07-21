<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Schedule Sidekick - Teacher Dashboard</title>
        <link rel="stylesheet" href="/teacher/teacher-dashboard.css" />
    </head>
    <body>
        <nav>
            <h2>Schedule Sidekick</h2>

            <ul>
                <li><a href="/high-fidelity-prototype/index.html">Home</a></li>
                <li><a href="#">Profile</a></li>
                <li>
                    <a href="/high-fidelity-prototype/index.html">Logout</a>
                </li>
            </ul>
        </nav>

        <header>
            <h1>Teacher Dashboard</h1>
            <p>Welcome back, ${teacher.name}</p>
        </header>

        <main>
            <section class="profile-card">
                <div>
                    <h2>My Profile</h2>
                    <p><strong>Name:</strong> ${teacher.name}</p>
                    <p><strong>Department:</strong> ${teacher.department}</p>
                    <p><strong>Email:</strong> ${teacher.email}</p>
                    <p><strong>Bio:</strong> ${teacher.bio}</p>
                </div>

                <div>
                    <a href="/teacher/update/${teacher.id}" class="button"
                        >Edit Profile</a
                    >
                </div>
            </section>

            <section class="classes">
                <div class="section-header">
                    <h2>My Classes</h2>

                    <a
                        href="/high-fidelity-prototype/teacher/create-course.html"
                        class="button"
                    >
                        + Create New Class
                    </a>
                </div>

                <div class="class-grid">
                    <#list courseList as course>
                    <div class="class-card">
                        <h3>${course.code}</h3>
                        <p>${course.name}</p>
                        <p>${course.section}</p>
                        <p>${course.currentEnrollment} / ${course.maxEnrollment} Students</p>

                        <a href="/teacher/roster/${course.id}" class="button small">
                            View Roster
                        </a>
                    </div>
                    </#list>

                    <!-- <div class="class-card">
                        <h3>CSC 230</h3>
                        <p>Web Development</p>
                        <p>Section 002</p>
                        <p>28 / 30 Students</p>

                        <a href="view-roster.html" class="button small">
                            View Roster
                        </a>
                    </div> -->

                    <!-- <div class="class-card">
                        <h3>CSC 330</h3>
                        <p>Data Structures</p>
                        <p>Section 001</p>
                        <p>29 / 30 Students</p>

                        <a href="view-roster.html" class="button small">
                            View Roster
                        </a>
                    </div> -->

                    <!-- <div class="class-card">
                        <h3>CSC 340</h3>
                        <p>Software Engineering</p>
                        <p>Section 001</p>
                        <p>22 / 30 Students</p>

                        <a href="view-roster.html" class="button small">
                            View Roster
                        </a>
                    </div> -->
                </div>
            </section>
        </main>
    </body>
</html>
