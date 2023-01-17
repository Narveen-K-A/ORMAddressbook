<cfcomponent>
    <cfset this.name="newaddressbook">
    <cfset this.sessionManagement="true">
    <cfset this.datasource="ormaddressbook">
    <cfset this.ormEnabled="true">
    <cfset this.ormSettings={logsql:"true"}>
</cfcomponent>