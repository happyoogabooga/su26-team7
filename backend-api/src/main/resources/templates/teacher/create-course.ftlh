<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Schedule Sidekick - Create Class Offering</title>
        <link rel="stylesheet" href="/teacher/create-course.css" />
    </head>
    <body>
        <header>
            <h1>Schedule Sidekick</h1>
            <p>Create New Class Offering</p>
        </header>

        <main>
            <div class="card">
                <h2>Course Information</h2>

                <form method="POST" action="/teacher/save-course">
                    <label>Course Name</label>
                    <input
                        type="text"
                        name="name"
                        placeholder="Introduction to Computer Science"
                    />

                    <label>Course Code</label>
                    <input type="text" name="code" placeholder="CSC 101" />

                    <label>Term</label>
                    <select name="term">
                        <option selected>Fall</option>
                        <option>Spring</option>
                        <option>Summer</option>
                    </select>

                    <label>Section</label>
                    <input type="text" name="section" placeholder="001" />

                    <label>Meeting Days</label>
                    <div class="checkboxes">
                        <label
                            ><input type="checkbox" class="day" value="M" />
                            Monday</label
                        >
                        <label
                            ><input type="checkbox" class="day" value="T" />
                            Tuesday</label
                        >
                        <label
                            ><input type="checkbox" class="day" value="W" />
                            Wednesday</label
                        >
                        <label
                            ><input type="checkbox" class="day" value="R" />
                            Thursday</label
                        >
                        <label
                            ><input type="checkbox" class="day" value="F" />
                            Friday</label
                        >
                        <input type="hidden" name="days" id="days" />
                    </div>

                    <script>
                        document
                            .querySelector("form")
                            .addEventListener("submit", function () {
                                document.getElementById("days").value = [
                                    ...document.querySelectorAll(
                                        ".day:checked",
                                    ),
                                ]
                                    .map((cb) => cb.value)
                                    .join("");
                            });
                    </script>

                    <label>Meeting Start Time</label>
                    <input
                        type="time"
                        name="startTime"
                        placeholder="10:00 AM"
                    />

                    <label>Meeting End Time</label>
                    <input type="time" name="endTime" placeholder="11:15 AM" />

                    <label>Location</label>
                    <input
                        type="text"
                        name="location"
                        placeholder="Petty Building 220"
                    />

                    <label>Maximum Enrollment</label>
                    <input
                        type="number"
                        name="maxEnrollment"
                        placeholder="30"
                    />

                    <label>Course Description</label>

                    <textarea
                        rows="5"
                        placeholder="An introductory course covering programming fundamentals, algorithms, and problem solving using Java."
                        name="description"
                    ></textarea>

                    <input
                        type="hidden"
                        name="teacherid"
                        value="${teacher.id}"
                    />
                    <div class="buttons">
                        <button class="cancel">
                            <a href="/teacher/teacher-dashboard">Cancel</a>
                        </button>
                        <button
                            type="submit"
                            class="create"
                            value="Create Class"
                        >
                            Create Class
                        </button>
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>
