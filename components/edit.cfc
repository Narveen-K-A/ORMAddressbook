<cfcomponent>
    <cffunction name="editFunction" access="remote" returnType="struct" returnFormat="json"> 
        <cfargument name="editpass" type="string" required="yes">
        <cfquery name="editQuery">
            SELECT *
            FROM contacts
            WHERE Personid = <cfqueryparam value="#arguments.editpass#" cfsqltype="cf_sql_varchar">
        </cfquery>	
        <cfset local.setQuery=structNew()>
        <cfset local.setQuery.PERSONID = editQuery.PERSONID>
        <cfset local.setQuery.TITLE = editQuery.TITLE>
        <cfset local.setQuery.FIRSTNAME = editQuery.FIRSTNAME>
        <cfset local.setQuery.LASTNAME = editQuery.LASTNAME>
        <cfset local.setQuery.GENDER = editQuery.GENDER>
        <cfset local.setQuery.DATEOFBIRTH = editQuery.DATEOFBIRTH>
        <cfset local.setQuery.PHOTO = editQuery.PHOTO>
        <cfset local.setQuery.ADDRESSOFUSER = editQuery.ADDRESSOFUSER>
        <cfset local.setQuery.STREET = editQuery.STREET>
        <cfset local.setQuery.EMAILID = editQuery.EMAILID>   
        <cfset local.setQuery.PHONENUMBER = editQuery.PHONENUMBER>
        <cfreturn local.setQuery>
    </cffunction>
</cfcomponent>