<!DOCTYPE html>
<html>
    <head>
        <link rel = "StyleSheet" href = "/student/Styles.css">
    </head>
    <body>
        <nav>
            <div class = "navbar">
                <a href = "/home" class = "logo">Schedule Sidekick</a>
            </div>
        </nav>
        <div class = "container">
            <div class = "card">
                <div class = "card_head">
                    <h1>Student Login</h1>
                </div>
                <div class = "card_body">
                    <form id = "studentLogin" action="/student/loginAccount" method="POST">
                        <div class = "formstyle">
                            <label for = "email" class = "formLabel">Email*</label>
                            <input type = "text" id = "studentEmail" required class = "formcontrol" placeholder = "e.g., jerry.moyer@gmail.com" name = "email">
                            <small>Please provide your <small style = "color:red; font-size:small">student email</small></small>
                        </div>
                        <div class = "formstyle">
                            <label for = "password" class = "formLabel">Password*</label>
                            <input type = "password" id = "studentPassword" required class = "formcontrol" name = "password">
                        </div>
                        <div class = "formstyle">
                            <input type = "submit" class = "formSubmit" value="Continue">
                        </div>
                    </form>
                    <hr>
                    <small>Don't have an account? go to <a href = "/student/signup">Sign up</a></small>
                </div>
            </div>
        </div>
    </body>
</html>