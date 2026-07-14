<!DOCTYPE html>
<html>
    <head>
        <link rel = "StyleSheet" href = "/student/Styles.css">
    </head>
    <body>
        <nav>
            <div class = "navbar">
                <a href = "../index.html" class = "logo">Schedule Sidekick</a>
            </div>
        </nav>
        <div class = "container">
            <div class = "card_head">
                <h1>Student Sign up</h1>
            </div>
            <div class = "card_body">
                <form id = "studentSignin" method = "POST" action = "/save">
                    <div class = "formstyle">
                        <label for = "firstName" class = "formLabel">Name*</label>
                        <input type = "text" id = "studentFirstName" required class = "formcontrol" placeholder = "e.g., Jerry" name = "name">
                        <small>Please put your name above</small>
                    </div>
                    <div class = "formstyle">
                        <strong>Your Class Year</strong>
                        <input type = "radio" value = 1 name = "class_year" id = "year_one">
                        <label for = "year_one">1</label>
                        <input type = "radio" value = 2 name = "class_year" id = "year_two">
                        <label for = "year_two">2</label>
                        <input type = "radio" value = 3 name = "class_year" id = "year_three">
                        <label for = "year_three">3</label>
                        <input type = "radio" value = 4 name = "class_year" id = "year_four">
                        <label for = "year_four">4</label>
                    </div>
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
                        <input type = "submit" class = "formSubmit" value = "continue">
                    </div>
                </form>
                <hr>
                <small>Wrong page? go to <a href = "login.html">Login</a></small>
            </div>
        </div>
    </body>
</html>