<cfcomponent>
    <cffunction name="updateFunction" access="remote"> 
        <cfargument name="formhideName" type="numeric" default="#form.edithideName#">
        <cfargument name="formtitlename" type="any" default="#form.editTitleName#">
        <cfargument name="formfirstname" type="any" default="#form.editFnameName#">
        <cfargument name="formlastname" type="any" default="#form.editLnameName#">
        <cfargument name="formgendername" type="any" default="#form.editGenderName#">
        <cfargument name="formdobname" type="any" default="#form.editDobName#">
        <cfargument name="formaddressname" type="any" default="#form.editAddressName#">
        <cfargument name="formstreetname" type="any" default="#form.editStreetName#">
        <cfargument name="formemailname" type="any" default="#form.editEmailName#">
        <cfargument name="formphonename" type="any" default="#form.editPhoneName#">
        <cfquery name="updateQuery">
            UPDATE contacts
            SET Title = <cfqueryparam value="#arguments.formtitlename#" cfsqltype="cf_sql_varchar">, 
                Firstname = <cfqueryparam value="#arguments.formfirstname#" cfsqltype="cf_sql_varchar">,
                Lastname = <cfqueryparam value="#arguments.formlastname#" cfsqltype="cf_sql_varchar">,
                Gender = <cfqueryparam value="#arguments.formgendername#" cfsqltype="cf_sql_varchar">,
                Dateofbirth = <cfqueryparam value="#arguments.formdobname#" cfsqltype="cf_sql_varchar">,
                Addressofuser = <cfqueryparam value="#arguments.formaddressname#" cfsqltype="cf_sql_varchar">,
                Street = <cfqueryparam value="#arguments.formstreetname#" cfsqltype="cf_sql_varchar">,
                Emailid = <cfqueryparam value="#arguments.formemailname#" cfsqltype="cf_sql_varchar">,
                Phonenumber = <cfqueryparam value="#arguments.formphonename#" cfsqltype="cf_sql_varchar">
            WHERE Personid = <cfqueryparam value="#arguments.formhideName#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfif len(trim(form.editFileName))>
            <cffile action="upload" fileField="editFileName" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="fileResult" destination="#expandpath("./assets/duplicate/")#">
            <cfset session.photoreupload = fileResult.serverFile>
            <cfquery name="editimage">
                UPDATE contacts 
                SET Photo = <cfqueryparam value="#session.photoreupload#" cfsqltype="cf_sql_varchar">
                WHERE Personid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.formhideName#">
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>