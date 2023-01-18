<cfcomponent>
    <cffunction name="getRegisterdata" access="public">
        <cfargument name="fieldFname" type="any" default="#form.fullname#">
        <cfargument name="fieldMailid" type="any" default="#form.emailid#">
        <cfargument name="fieldUname" type="any" default="#form.username#">
        <cfargument name="fieldPswd" type="any" default="#form.password#">
        <cfargument name="fieldCpswd" type="any" default="#form.cpassword#">
        <cfquery name="datacollection">
            INSERT INTO register VALUES(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldFname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldMailid#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldUname#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldPswd#">,
                                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldCpswd#">)
        </cfquery>
        <cflocation url="login.cfm">
    </cffunction>
    <cffunction name="checkFordata" access="public">
        <cfargument name="fieldPswd" default="#form.password#">
        <cfargument name="fieldUname" default="#form.username#">
        <cfif structKeyExists(form,'formsubmit')>
            <cfquery name="infoCheck">
                SELECT Firstname
                FROM register
                WHERE Username = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldUname#">
                AND Userpassword = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldPswd#">
            </cfquery>
            <cfset session.userInfo=infoCheck.Firstname>
            <cfif infoCheck.recordCount>
                <cfset session.flag = 1>
                <cflocation url="view.cfm" addtoken="no">
            <cfelse>
                <cflocation url="login.cfm" addtoken="no">
                <cfreturn "Please enter a valid password!">
            </cfif>
        </cfif>
    </cffunction>
    <cffunction name="createData" access="public">
        <cfargument name="fieldtitlename" type="any" default="#form.titlename#">
        <cfargument name="fieldfirstname" type="any" default="#form.firstname#">
        <cfargument name="fieldlastname" type="any" default="#form.lastname#">
        <cfargument name="fieldgendername" type="any" default="#form.gendername#">
        <cfargument name="fielddobname" type="any" default="#form.dobname#">
        <cfargument name="fieldphotoname" type="any" default="#form.filename#">
        <cfargument name="fieldaddressname" type="any" default="#form.addressname#">
        <cfargument name="fieldstreetname" type="any" default="#form.streetname#">
        <cfargument name="fieldemailname" type="any" default="#form.emailname#">
        <cfargument name="fieldphonename" type="any" default="#form.phonename#">
        <cfquery name="addresscollection">
            INSERT INTO contacts(Title,Firstname,Lastname,Gender,Dateofbirth,Photo,Addressofuser,Street,Emailid,Phonenumber) 
            VALUES(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldtitlename#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldfirstname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldlastname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldgendername#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fielddobname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldphotoname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldaddressname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldstreetname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldemailname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldphonename#">)
        </cfquery>
        <cflocation url="view.cfm">
    </cffunction>
    <!--- <cffunction name="selectData" access="public" returnType="query">
        <cfquery name="datacollection">
            SELECT Personid,Title,Firstname,Lastname,Gender,Emailid,Phonenumber FROM createdata
        </cfquery>
        <cfreturn datacollection>
    </cffunction>
    <cffunction name="deletedata" access="remote">
		<cfquery name="delete">
			DELETE FROM createdata
			WHERE Emailid=<cfqueryparam value="#url.emailid#" cfsqltype="cf_sql_varchar">
		</cfquery>
		<cflocation url="..\view.cfm">
	</cffunction> --->
    <cffunction name="logout" access="public">
        <cfset structClear(session)>
        <cflocation url="login.cfm" addtoken="no">
    </cffunction>
</cfcomponent>