<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
        <script defer src="js/register.js"></script>
    </head>
    <body>
        <cfoutput>
            <div class="lightbluebg">
                <cfinclude template="header.cfm">
                <div class="mainBody displayflex">
                    <div class="bgcolor width300 displayflex justifycenter align borderleft">
                        <div>
                            <img class="icon50 cursorpointer" src="assets/addressbooklogo.png" alt="Logo">
                        </div>
                    </div>
                    <div class="padding10 bgwhite borderright">
                        <form method="post" name="myform" onsubmit="return validateform()">
                            <div class="bluecolor margin10 textcenter">SIGN UP</div>
                            <div class="margin20">
                                <input type="text" id="fname" name="fullname" class="fname outlinenone borderbottom bordernone width300" placeholder="Full Name" onblur="validateform()"><br>
                                <small id="fname_error">Please enter your full name!</small>
                            </div>
                            <div class="margin20">
                                <input type="text" id="mailid" name="emailid" class="email outlinenone borderbottom bordernone width300" placeholder="Email ID" onblur="validateform()"><br>
                                <small id="email_error">Please enter your Mail ID!</small>
                            </div>
                            <div class="margin20">
                                <input type="text" id="uname" name="username" class="fname outlinenone borderbottom bordernone width300" placeholder="Username" onblur="validateform()"><br>
                                <small id="uname_error">Please enter the username!</small>
                            </div>
                            <div class="margin20">
                                <input type="password" id="pswd" name="password" class="userpwd outlinenone borderbottom bordernone width300" placeholder="Password" onblur="validateform()"><br>
                                <small id="pswd_error">Please enter the password!</small>
                            </div>
                            <div class="margin20">
                                <input type="password" id="cpswd" name="cpassword" class="userpwd outlinenone borderbottom bordernone width300" placeholder="Confirm Password" onblur="validateform()"><br>
                                <small id="cpswd_error">Please confirm your password!</small><br>
                                <small id="cpaswd_error">Your password is not matching!</small>
                            </div>
                            <div class="margin20 displayflex justifycenter">
                                <input type="submit" class="login bluecolor outlinenone padding10 cursorpointer" id="formsubmit" name="myformsubmit" value="REGISTER">
                            </div>
                        </form>
                        <cfif structKeyExists(form,'myformsubmit')>
                            <cfinvoke method="getRegisterdata" component="components/component">
                            <cfset structClear(form)>
                        </cfif>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>