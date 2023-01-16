<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
        <script defer src="js/login.js"></script>
        <script defer src="js/google.js"></script>
        <script defer src="js/facebook.js"></script>
        <script async defer src="assets/platform.js"></script>
        <meta name="google-signin-client_id" content="769267328578-1m7tm8akljl1pp8ehct3bg431vhdbg81.apps.googleusercontent.com">
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
                        <form method="post" name="myform" onsubmit="return validatemyform()">
                            <div class="bluecolor margin10 textcenter">LOGIN</div>
                            <div class="margin20">
                                <input type="text" name="username" class="username outlinenone borderbottom bordernone width300" id="uname" placeholder="Username" onblur="validatemyform()"><br>
                                <small id="uname_error">Please enter the username!</small>
                            </div>
                            <div class="margin20">
                                <input type="password" name="password" class="userpwd outlinenone borderbottom bordernone width300" id="pswd" placeholder="Password" onblur="validatemyform()"><br>
                                <small id="pswd_error">Please enter your password!</small>
                            </div>
                            <div class="margin20 displayflex justifycenter">
                                <input type="submit" id="formsubmit" name="formsubmit" class="login bluecolor outlinenone padding10 cursorpointer" value="LOGIN">
                            </div>
                            <cfif structKeyExists(form,'formsubmit')>
                                <cfinvoke component="components/component" method="checkFordata" returnVariable="incorrectpass">
                                <div class="displayflex justifycenter margin10"><small>#incorrectpass#</small></div>
                            </cfif>
                            <div class="textcenter">Or Sign in using</div>
                            <div class="displayflex justifycenter">
                                <div class="displayflex">
                                    <div class="margin10" id="fb-root">
                                        <button onclick="FbApp_Login();" class="outlinenone bordernone bgwhite">
                                            <img class="icon50 cursorpointer" src="assets/facebook.png" alt="Facebook Logo">
                                        </button>
                                    </div>
                                    <div class="margin10">
                                        <img class="icon53 cursorpointer" data-onsuccess="onSignIn" src="assets/google.png" alt="Google Logo">
                                    </div>
                                </div>
                            </div>
                            <div class="displayflex justifycenter margin10">
                                Don't have an account? <a class="bluecolor" href="register.cfm">Register here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>
