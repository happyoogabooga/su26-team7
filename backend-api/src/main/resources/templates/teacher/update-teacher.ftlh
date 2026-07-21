<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Schedule Sidekick - Update Teacher Account</title>
        <link rel="stylesheet" href="/teacher/create-teacher.css" />
    </head>
    <body>
        <nav>
            <div class="logo">
                <h2>Schedule Sidekick</h2>
            </div>

            <ul>
                <li><a href="/high-fidelity-prototype/index.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Account</a></li>
            </ul>
        </nav>

        <header>
            <h1>Schedule Sidekick</h1>
            <p>Update Teacher Account</p>
        </header>

        <main>
            <div class="card">
                <h2>Teacher Information</h2>

                <form method="POST" action="/teacher/update/${teacher.id}">
                    <label for="name">Name</label>
                    <input type="text" value="${teacher.name}" name="name" />

                    <label for="password">Password</label>
                    <input
                        type="text"
                        id="password"
                        value="${teacher.password}"
                        name="password"
                    />

                    <label for="department">Department</label>
                    <select id="department" name="department">
                        <option value="Arts & Humanities">
                            Arts & Humanities
                        </option>
                        <option value="Biology">Biology</option>
                        <option value="Business">Business</option>
                        <option value="Chemistry">Chemistry</option>
                        <option value="Communication">Communication</option>
                        <option value="Computer Science">
                            Computer Science
                        </option>
                        <option value="Education">Education</option>
                        <option value="Engineering">Engineering</option>
                        <option value="English">English</option>
                        <option value="Environmental Science">
                            Environmental Science
                        </option>
                        <option value="History">History</option>
                        <option value="Mathematics">Mathematics</option>
                        <option value="Medicine">Medicine</option>
                        <option value="Music">Music</option>
                        <option value="Nursing">Nursing</option>
                        <option value="Philosophy">Philosophy</option>
                        <option value="Physics">Physics</option>
                        <option value="Political Science">
                            Political Science
                        </option>
                        <option value="Psychology">Psychology</option>
                        <option value="Public Health">Public Health</option>
                        <option value="Social Sciences">Social Sciences</option>
                        <option value="Sociology">Sociology</option>
                        <option value="Theatre">Theatre</option>
                    </select>

                    <label for="bio">Short Bio</label>
                    <textarea id="bio" rows="5" name="bio">
                        ${teacher.bio}</textarea
                    >

                    <div class="buttons">
                        <button class="cancel">
                            <a href="/index">Cancel</a>
                        </button>
                        <button
                            type="submit"
                            class="create"
                            value="Update Account"
                        >
                            Update Account
                        </button>
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>
