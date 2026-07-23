<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Schedule Sidekick - Teacher Login</title>
        <link rel="stylesheet" href="teacher-login.css" />
    </head>
    <body>
        <header>
            <h1>Schedule Sidekick</h1>
            <p>Teacher Portal</p>
        </header>

        <main>
            <div class="card">
                <h2>Teacher Login</h2>

                <form>
                    <label for="email">School Email</label>
                    <input
                        type="email"
                        id="email"
                        placeholder="Enter your school email"
                    />

                    <label for="password">Password</label>
                    <input
                        type="password"
                        id="password"
                        placeholder="Enter your password"
                    />

                    <div class="buttons">
                        <a href="teacher-dashboard.html" class="login-btn">
                            Log In
                        </a>
                    </div>
                </form>

                <div class="links">
                    <a href="#">Forgot Password?</a>
                </div>

                <div class="signup">
                    <p>
                        Don't have an account?
                        <a href="/teacher/new-teacher">Create One</a>
                    </p>
                </div>
            </div>
        </main>
    </body>
</html>
