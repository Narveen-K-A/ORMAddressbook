<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="assets/modal.css">
        <script defer src="js/script.js"></script>
        
        <script defer src="assets/jquery.js"></script>
        <script defer src="assets/jquery.min.js"></script>
        <script defer src="js/edit.js"></script>
        
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'flag')>
                <div class="lightbluebg borderview">
                    <cfinclude template="headerin.cfm">
                    <div class="displayflex justifycenter padding30">
                        <div class="bgwhite whitediv displayflex">
                            <div>
                                <a href="pdfdownload.cfm">
                                    <img src="assets/pdf.png" class="icon30 cursorpointer">
                                </a>
                            </div>
                            <div>
                                <a href="xlsdownload.cfm">
                                    <img src="assets/xls.png" class="icon30 cursorpointer">
                                </a>
                            </div>
                            <div>
                                <button onclick="printDiv('print')" class="outlinenone bordernone bgwhite">
                                    <img src="assets/printing.png" class="icon30 cursorpointer">
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="displayflex">
                        <div>
                            <div class="bgwhite padding10 margin10 user displayflex justifycenter">
                                <img src="assets/account.png" class="userwidth">
                            </div>
                            <div class="bgwhite user displayflex justifycenter">
                                <b class="bluecolor">#session.userInfo#</b>
                            </div>
                            <div class="bgwhite user displayflex justifycenter padding10">
                                <button onclick="document.getElementById('id01').style.display='block'" class="modalButton">CREATE CONTACT</button>
                            </div>
                        </div>
                        <cfset ORMReload()>
                        <cfdump var="#(EntityLoad("Contacts"))#">
                        <cfset datastore=EntityLoad("Contacts")>  
                        <div id="print">
                            <table class="bgwhite">
                                <tr>
                                    <th class="padding10 tableborder"></th>
                                    <th class="padding10 bluecolor tableborder">NAME</th>
                                    <th class="padding10 bluecolor tableborder">EMAIL ID</th>
                                    <th class="padding10 bluecolor tableborder">PHONE NUMBER</th>
                                    <th class="padding10 tableborder"></th>
                                    <th class="padding10 tableborder"></th>
                                    <th class="padding10 tableborder"></th>
                                </tr>
                                <cfloop index="datastore" array="#datastore#">
                                    <cfset local.person=datastore.getGender>
                                    <tr>
                                        <td class="padding10 tableborder">
                                            <cfset local.person=datastore.getGender>
                                            <cfif local.person eq "Female">
                                                <img src="assets/female.png" class="icon53">
                                            <cfelse>
                                                <img src="assets/male.png" class="icon53">
                                            </cfif>
                                        </td>
                                        <td class="padding10 tableborder">#datastore.getTitle# #datastore.getFirstname# #datastore.getLastname#</td>
                                        <td class="padding10 tableborder">#datastore.getEmailid#</td>
                                        <td class="padding10 tableborder">#datastore.getPhonenumber#</td>
                                        <!--- <td class="padding10 tableborder">
                                            <button type="submit" onclick="document.getElementById('id02').style.display='block';editPage('#local.value#')" class="viewbutton">EDIT</button>
                                        </td>
                                        <td class="padding10 tableborder">
                                            <button class="viewbutton">
                                                <a class="delete" href="components/component.cfc?method=deletedata&emailid=#datastore.components.getEmailid#">DELETE</a>
                                            </button>
                                        </td>
                                        <td class="padding10 tableborder">
                                            <button type="submit" onclick="document.getElementById('id03').style.display='block';openPage('#local.value#')" class="viewbutton">VIEW</button>
                                        </td> --->
                                    </tr>
                                </cfloop>
                            </table>
                            <!--- <div id="id02" class="w3-modal">
                                <div class="w3-modal-content">
                                    <div class="w3-container">
                                        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                                        <div class="displayflex lightbluebg">
                                            <div class="padding10 margin10 bgwhite">
                                                <div class="lightbluebg displayflex justifycenter">
                                                    <div class="bluecolor padding10 largefont">EDIT CONTACT</div>
                                                </div>
                                                <div class="padding10 bluecolor blueborder">Personal Contact</div>
                                                <form method="post" name="fromCreate" onsubmit="return validateEditForm()">
                                                    <div class="displayflex justify">
                                                        <div>
                                                            <div class="bluecolor padding10">Title</div>
                                                                <select name="editTitleName" id="editTitle" class="borderbottom borderstyle" value="">
                                                                    <option selected="" ></option>
                                                                    <option value="Mr">Mr</option>
                                                                    <option value="Mrs">Mrs</option>
                                                                    <option value="Ms">Ms</option>
                                                                </select><br>
                                                                <small id="editTitle_error">Please fill this field!</small>
                                                            </div>
                                                        <div>
                                                            <div class="bluecolor padding10">First Name*</div>   
                                                            <input type="text" name="editFnameName" id="editFname" placeholder="Your First Name" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editFname_error">Please fill this field!</small>
                                                        </div>
                                                        <div>
                                                            <div class="bluecolor padding10">Last Name*</div>   
                                                            <input type="text" name="editLnameName" id="editLname" placeholder="Your Last Name" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editLname_error">Please fill this field!</small>
                                                        </div>
                                                    </div>
                                                    <div class="displayflex justify">
                                                        <div>
                                                            <div class="bluecolor padding10">Gender*</div>
                                                            <select name="editGenderName" id="editGender" class="borderbottom borderstyle outlinenone width200" value="">
                                                                <option selected=""></option>
                                                                <option value="Male">Male</option>
                                                                <option value="Female">Female</option>
                                                            </select><br>
                                                            <small id="editGender_error">Please fill this field!</small>
                                                        </div>
                                                        <div>
                                                            <div class="bluecolor padding10">Date Of Birth*</div>   
                                                            <input type="date" name="editDobName" id="editDob" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editDob_error">Please fill this field!</small>
                                                        </div>
                                                    </div>
                                                    <div class="displayflex justify">
                                                        <div>
                                                            <div class="bluecolor padding10">Upload Photo*</div>
                                                            <input type="file" name="editFileName" id="editFile" class="outlinenone width200"><br>
                                                        </div>
                                                    </div>
                                                    <div class="padding10 bluecolor blueborder">Contact Details</div>
                                                    <div class="displayflex justify">
                                                        <div>
                                                            <div class="bluecolor padding10">Address*</div>
                                                            <input type="text" name="editAddressName" id="editAddress" placeholder="Your Address" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editAddress_error">Please fill this field!</small>
                                                        </div>
                                                        <div>
                                                            <div class="bluecolor padding10">Street*</div>   
                                                            <input type="text" name="editStreetName" id="editStreet" placeholder="Your Street Name" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editStreet_error">Please fill this field!</small>
                                                        </div>
                                                    </div>
                                                    <div class="displayflex justify">
                                                        <div>
                                                            <div class="bluecolor padding10">Email Id*</div>
                                                            <input type="text" name="editEmailName" id="editEmail" placeholder="Your Email Address" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editEmail_error">Please fill this field!</small>
                                                        </div>
                                                        <div>
                                                            <div class="bluecolor padding10">Phone No*</div>   
                                                            <input type="text" name="editPhoneName" id="editPhone" placeholder="Your Phone No" class="outlinenone width200 borderbottom borderstyle" value=""><br>
                                                            <small id="editPhone_error">Please fill this field!</small>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <input type="hidden" id="edithide" name="edithideName" value="">
                                                    </div>
                                                    <div class="displayflex justifycenter">
                                                        <input type="submit" name="editsubmit" id="editformsubmit" class="login padding10 margin10 cursorpointer bluecolor" value="EDIT">
                                                    </div>
                                                </form>
                                                <!--- <cfif structKeyExists(form,'editsubmit')>
                                                    <cfinvoke method="updateFunction" component="components/update">
                                                    <cflocation url="view.cfm" addtoken="no">
                                                </cfif> --->
                                            </div>
                                            <div class="displayflex justifycenter align width200 margin10">
                                                <img src="assets/account.png" class="userwidth">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="id03" class="w3-modal">
                                <div class="w3-modal-content">
                                    <div class="w3-container">
                                        <span onclick="document.getElementById('id03').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                                        <div class="displayflex lightbluebg">
                                            <div class="padding10 margin10 bgwhite">
                                                <div class="lightbluebg displayflex justifycenter">
                                                    <div class="bluecolor padding10 largefont viewwidth displayflex justifycenter">CONTACT DETAILS</div>
                                                </div>
                                                <div class="name bluecolor margin10">
                                                    Name:<span id="viewtitle" class="spancolor"></span>
                                                        <span id="viewfname" class="spancolor"></span>
                                                        <span id="viewlname" class="spancolor"></span>
                                                </div>
                                                <div class="name bluecolor margin10">
                                                    Gender:<span id="viewgender" class="spancolor"></span>
                                                </div>
                                                <div class="name bluecolor margin10">
                                                    Date of birth:<span id="viewdob" class="spancolor"></span>
                                                </div>
                                                <div class="name bluecolor margin10">
                                                    Address:<span id="viewaddress" class="spancolor">,</span>
                                                            <span id="viewstreet" class="spancolor"></span>
                                                </div>
                                                <div class="name bluecolor margin10">
                                                    Email ID:<span id="viewmail" class="spancolor"></span>
                                                </div>
                                                <div class="name bluecolor margin10">
                                                    Phone:<span id="viewphone" class="spancolor"></span>
                                                </div>
                                                <div class="displayflex justifycenter">
                                                    <a href="view.cfm">
                                                        <input type="submit" name="closesubmit" id="closeformsubmit" class="login padding10 margin10 cursorpointer bluecolor" value="CLOSE">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="displayflex justifycenter align width200 margin10">
                                                <img src="assets/account.png" class="userwidth">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> --->
                    </div>
                </div>
                <div id="id01" class="w3-modal">
                    <div class="w3-modal-content">
                        <div class="w3-container">
                            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                            <div class="displayflex lightbluebg">
                                <div class="padding10 margin10 bgwhite">
                                    <div class="lightbluebg displayflex justifycenter">
                                        <div class="bluecolor padding10 largefont">CREATE CONTACT</div>
                                    </div>
                                    <div class="padding10 bluecolor blueborder">Personal Contact</div>
                                    <form method="post" name="fromCreate" onsubmit="return validatecreateform()">
                                        <div class="displayflex justify">
                                            <div>
                                                <div class="bluecolor padding10">Title</div>
                                                    <select name="titlename" id="titleid" class="borderbottom borderstyle" onblur="validatecreateform()">
                                                        <option selected="" ></option>
                                                        <option value="Mr">Mr</option>
                                                        <option value="Mrs">Mrs</option>
                                                        <option value="Ms">Ms</option>
                                                    </select><br>
                                                    <small id="titleid_error">Please fill this field!</small>
                                                </div>
                                            <div>
                                                <div class="bluecolor padding10">First Name*</div>   
                                                <input type="text" name="firstname" id="firstnameid" placeholder="Your First Name" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="firstnameid_error">Please fill this field!</small>
                                            </div>
                                            <div>
                                                <div class="bluecolor padding10">Last Name*</div>   
                                                <input type="text" name="lastname" id="lastnameid" placeholder="Your Last Name" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="lastnameid_error">Please fill this field!</small>
                                            </div>
                                        </div>
                                        <div class="displayflex justify">
                                            <div>
                                                <div class="bluecolor padding10">Gender*</div>
                                                <select name="gendername" id="genderid" class="borderbottom borderstyle outlinenone width200" onblur="validatecreateform()">
                                                    <option selected=""></option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                </select><br>
                                                <small id="genderid_error">Please fill this field!</small>
                                            </div>
                                            <div>
                                                <div class="bluecolor padding10">Date Of Birth*</div>   
                                                <input type="date" name="dobname" id="dobid" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="dobid_error">Please fill this field!</small>
                                            </div>
                                        </div>
                                        <div class="displayflex justify">
                                            <div>
                                                <div class="bluecolor padding10">Upload Photo*</div>
                                                <input type="file" name="filename" id="fileid" class="outlinenone width200" onblur="validatecreateform()"><br>
                                                <small id="fileid_error">Please fill this field!</small>
                                            </div>
                                        </div>
                                        <div class="padding10 bluecolor blueborder">Contact Details</div>
                                        <div class="displayflex justify">
                                            <div>
                                                <div class="bluecolor padding10">Address*</div>
                                                <input type="text" name="addressname" id="addressid" placeholder="Your Address" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="addressid_error">Please fill this field!</small>
                                            </div>
                                            <div>
                                                <div class="bluecolor padding10">Street*</div>   
                                                <input type="text" name="streetname" id="streetid" placeholder="Your Street Name" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="streetid_error">Please fill this field!</small>
                                            </div>
                                        </div>
                                        <div class="displayflex justify">
                                            <div>
                                                <div class="bluecolor padding10">Email Id*</div>
                                                <input type="text" name="emailname" id="emailid" placeholder="Your Email Address" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="emailid_error">Please fill this field!</small>
                                            </div>
                                            <div>
                                                <div class="bluecolor padding10">Phone No*</div>   
                                                <input type="text" name="phonename" id="phoneid" placeholder="Your Phone No" class="outlinenone width200 borderbottom borderstyle" onblur="validatecreateform()"><br>
                                                <small id="phoneid_error">Please fill this field!</small>
                                            </div>
                                        </div>
                                        <div>
                                            <input type="hidden" id="createhide" name="createhideName" value="">
                                        </div>
                                        <div class="displayflex justifycenter">
                                            <input type="submit" name="createsubmit" id="createformsubmit" class="login padding10 margin10 cursorpointer bluecolor" value="CREATE">
                                        </div>
                                    </form>
                                    <cfif structKeyExists(form,'createsubmit')>
                                        <cfinvoke method="createData" component="components/component">
                                        <cfset structClear(form)>
                                    </cfif>
                                </div>
                                <div class="displayflex justifycenter align width200 margin10">
                                    <img src="assets/account.png" class="userwidth">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <cfelse>
                <cflocation url="login.cfm" addtoken="no">
                <cfset structClear(session)>
            </cfif>
        </cfoutput>
    </body>
</html>