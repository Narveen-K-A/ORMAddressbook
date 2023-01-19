<cfcomponent>
    <cffunction name="viewFunction" access="remote" returnType="struct" returnFormat="json"> 
        <cfargument name="valuepass" type="string" required="yes">
        <cfquery name="selectQuery">
            SELECT *
            FROM contacts
            WHERE Personid = <cfqueryparam value="#arguments.valuepass#" cfsqltype="cf_sql_varchar">
        </cfquery>	
        <cfset local.viewQuery=structNew()>
        <cfset local.viewQuery.PERSONID = selectQuery.PERSONID>
        <cfset local.viewQuery.TITLE = selectQuery.TITLE> 
        <cfset local.viewQuery.FIRSTNAME = selectQuery.FIRSTNAME>
        <cfset local.viewQuery.LASTNAME = selectQuery.LASTNAME>
        <cfset local.viewQuery.GENDER = selectQuery.GENDER>
        <cfset local.viewQuery.DATEOFBIRTH = selectQuery.DATEOFBIRTH>
        <cfset local.viewQuery.ADDRESSOFUSER = selectQuery.ADDRESSOFUSER>
        <cfset local.viewQuery.STREET = selectQuery.STREET>
        <cfset local.viewQuery.EMAILID = selectQuery.EMAILID>   
        <cfset local.viewQuery.PHONENUMBER = selectQuery.PHONENUMBER>
        <cfreturn local.viewQuery>
    </cffunction>
</cfcomponent>