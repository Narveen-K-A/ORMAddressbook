<cfcomponent persistent="true" table="contactinfo"> 
    <cfproperty name="id" column="ID" generator="increment"> 
    <cfproperty name="TITLE"> 
    <cfproperty name="FIRSTNAME"> 
    <cfproperty name="LASTNAME"> 
    <cfproperty name="GENDER"> 
    <cfproperty name="DOB"> 
    <cfproperty name="PHOTO"> 
    <cfproperty name="ADDRESS"> 
    <cfproperty name="STREET"> 
    <cfproperty name="EMAILID"> 
    <cfproperty name="PHONE">
    <cfset contacts = entityLoad("contactinfo")>
</cfcomponent>