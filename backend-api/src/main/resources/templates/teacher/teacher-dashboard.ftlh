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
                <li><a href="/index">Home</a></li>
                <li><a href="/teacher/teacher-dashboard">Profile</a></li>
                <li>
                    <a href="/index">Logout</a>
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
                        href="/teacher/${id}/new-course"
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
                </div>
            </section>
        </main>
    </body>
</html>
